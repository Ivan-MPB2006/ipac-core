\# Wave 4 Safe Project Rules v0.1



```yaml

artifact\_id: WAVE4-SAFE-RULES-001

artifact\_type: project\_rules\_collection

status: active\_project\_rules\_candidate

version: 0.1

source: WAVE4\_ADVANCED\_DELTA\_IMPORT\_REVIEW\_v0\_1

source\_path: 08\_TRACE\_AND\_DECISIONS/reviews/WAVE4\_ADVANCED\_DELTA\_IMPORT\_REVIEW\_v0\_1.md

layer: project\_rules

rules\_count: 11

field\_validated: false

execution\_authorized: false

mvi\_authorized: false

codex\_authorized: false

```



\---



\# 0. Статус документа



Этот документ фиксирует \*\*11 безопасных правил\*\*, импортируемых из Wave 4 Advanced Delta Import Review.



Правила импортируются как слой проектной дисциплины.



Этот документ НЕ запускает:



\* MVP;

\* MVI;

\* Codex;

\* MCP;

\* RAG / Neo4j;

\* dashboard;

\* public channels;

\* execution plan;

\* Deep Research.



Главный принцип:



```text

Importing a rule does not activate the asset.

Правило можно принять, не запуская действие.

```



\---



\# 1. Purpose



Цель документа — перенести из Wave 4 только те правила, которые усиливают дисциплину IPaC и не втягивают проект в преждевременное исполнение.



Wave 4 выявила продвинутые наработки старого чата.

Этот документ берёт из них только безопасный слой:



```text

rules

guardrails

boundary discipline

artifact discipline

review discipline

```



\---



\# 2. Rule Collection



\## RULE-W4-001 — Local-first Markdown Canon



Канонические и рабочие артефакты IPaC должны сохраняться в переносимой Markdown-форме.



Правило:



```text

Если знание претендует на долговременное хранение,

оно должно быть вынесено из чата в Markdown / register / trace.

```



Назначение:



\* поддерживает переносимость;

\* делает знания читаемыми без платформенной зависимости;

\* позволяет хранить артефакты в Obsidian и Git;

\* снижает риск потери смысла внутри длинного чата.



Не означает:



\* что любой черновик сразу становится каноном;

\* что Markdown сам по себе является source-of-truth;

\* что все мысли надо превращать в документы.



\---



\## RULE-W4-002 — Mermaid as Code-like Knowledge Map



Mermaid-схемы используются как проверяемые и редактируемые знаниевые карты.



Правило:



```text

Схема должна быть не картинкой без следа,

а текстовым артефактом, который можно версионировать в Git.

```



Назначение:



\* делает схемы отчуждаемыми;

\* сохраняет историю изменений;

\* позволяет проверять структуру связей;

\* поддерживает работу в Obsidian.



Не означает:



\* что любая схема является архитектурой;

\* что Mermaid заменяет смысловую проработку;

\* что визуализация автоматически доказывает зрелость концепта.



\---



\## RULE-W4-003 — MVI Execution Pivot



MVI не является продуктом, запуском или маркетинговым действием.



Правило:



```text

MVI допускается только как минимальный проверочный цикл

для конкретной гипотезы.

```



Назначение:



\* защищает от overbuild;

\* не даёт превратить MVI в продукт;

\* связывает действие с проверкой гипотезы;

\* сохраняет минимальность проверки.



Не означает:



\* что MVI уже выбран;

\* что MVI можно запускать сейчас;

\* что Phase 7R / 7S / 7T активированы.



\---



\## RULE-W4-004 — Feedback as Evidence Discipline



Feedback не равен evidence автоматически.



Правило:



```text

Raw feedback становится evidence

только после сохранения, review и интерпретации.

```



Назначение:



\* защищает от ложной валидации;

\* отделяет реакцию от доказательства;

\* требует trace;

\* требует review перед изменением канона.



Не означает:



\* что любой отзыв подтверждает IPaC;

\* что положительная реакция равна field validation;

\* что публичный резонанс равен проверке гипотезы.



\---



\## RULE-W4-005 — No Canon Update Without Review



Канон нельзя обновлять напрямую из чата, feedback или красивой сводки.



Правило:



```text

Любое изменение canon должно пройти:

review → decision → trace.

```



Назначение:



\* защищает ядро проекта;

\* сохраняет историю изменений;

\* предотвращает premature canonization;

\* делает controlled rebuild обязательным.



Не означает:



\* что канон нельзя менять;

\* что review должен быть тяжёлым;

\* что любое изменение требует большого документа.



\---



\## RULE-W4-006 — Mandatory Artifact Boundary Check



Перед принятием любого артефакта нужно проверить его слой.



Правило:



```text

Каждый артефакт должен явно указывать свой слой:

Need, Concept, Architecture, Hypothesis, Research,

Validation, MVP, Execution, Trace или Parking.

```



Назначение:



\* предотвращает смешение уровней;

\* защищает архитектуру от execution drift;

\* помогает правильно размещать артефакты в Obsidian;

\* упрощает Git trace.



Не означает:



\* что артефакт не может иметь связи с несколькими слоями;

\* что нужно создавать лишние документы;

\* что классификация важнее смысла.



\---



\## RULE-W4-007 — Architecture / Execution Separation



Execution items не должны попадать в architecture core.



Правило:



```text

Инструменты, каналы, runbooks, Codex, MCP, dashboard

и public launch не являются архитектурным ядром IPaC.

```



Назначение:



\* удерживает архитектурные инварианты;

\* предотвращает tool capture;

\* отделяет “как действуем” от “что нельзя ломать”;

\* сохраняет чистоту Core Canon.



Не означает:



\* что инструменты не важны;

\* что Codex / MCP не нужны;

\* что execution не будет подключён позже.



\---



\## RULE-W4-008 — Parked-source Discipline



Старые чаты и продвинутые наработки старого контекста не являются source-of-truth.



Правило:



```text

Материалы старого чата могут быть только reference archive

или parked-source до review.

```



Назначение:



\* защищает от hidden context debt;

\* не даёт старому drift вернуться в новый Project;

\* сохраняет полезные материалы без преждевременного канонизирования;

\* поддерживает Import Review discipline.



Не означает:



\* что старый чат бесполезен;

\* что старые наработки надо удалить;

\* что parked-source не может стать каноном после review.



\---



\## RULE-W4-009 — AI Mentor Layer Boundary



AI может быть наставником, ревьюером и методологическим проводником, но не владельцем intent.



Правило:



```text

Human Subject сохраняет право финального смыслового суждения:

то / не то.

```



Назначение:



\* сохраняет человеческое авторство замысла;

\* ограничивает AI authority creep;

\* делает AI методологическим усилителем, а не хозяином процесса;

\* защищает живой смысл от автоматического переоформления.



Не означает:



\* что AI не может предлагать решения;

\* что AI не может критиковать;

\* что AI не может быть сильным process consultant.



\---



\## RULE-W4-010 — AI-assisted Reviewer / Process Consultant Role



AI должен помогать не только генерировать ответы, но и удерживать процесс.



Правило:



```text

AI должен останавливать процесс при нарушении guardrails:

drift, false validation, layer mixing, tool capture, execution creep.

```



Назначение:



\* превращает AI из генератора текста в процессного консультанта;

\* помогает удерживать границы;

\* снижает риск “уверенной галлюцинации процесса”;

\* поддерживает review discipline.



Не означает:



\* что AI принимает финальные решения;

\* что AI может заменять field validation;

\* что AI может сам повышать статус гипотез.



\---



\## RULE-W4-011 — Knowledge Clump Export Discipline



Ценные смысловые сгустки должны выводиться из чата в отчуждаемые артефакты.



Правило:



```text

Искра знания из чата должна быть превращена в:

artifact / register / canon note / parking note / trace.

```



Назначение:



\* не даёт смыслу раствориться в чате;

\* превращает brainstorming в инженерное знание;

\* поддерживает IPaC lifecycle;

\* связывает Chat → Project → Obsidian → Git.



Не означает:



\* что каждую мысль надо документировать;

\* что каждый insight становится canon;

\* что export заменяет review.



\---



\# 3. Final Rule



Wave 4 Safe Rules усиливают дисциплину проекта, но не активируют исполнение.



```text

Правила импортируются в Project Rules.

Активы, из которых они пришли, остаются в своих статусах:

review / research / backlog / parking / archive.

```



\---



\# 4. Placement



Рекомендуемое место хранения:



```text

06\_PROJECT\_RULES/WAVE4\_SAFE\_PROJECT\_RULES\_v0\_1.md

```



Связанный trace-документ:



```text

08\_TRACE\_AND\_DECISIONS/reviews/WAVE4\_ADVANCED\_DELTA\_IMPORT\_REVIEW\_v0\_1.md

```



\---



\# 5. Commit Recommendation



Рекомендуемый Git commit:



```text

rules: import Wave 4 safe project rules

```



\---



\# 6. Status



```text

WAVE4\_SAFE\_PROJECT\_RULES\_v0\_1

status: active\_project\_rules\_candidate

import\_authorized: yes

execution\_authorized: no

canon\_update\_required: no

review\_trace\_required: already linked

```



