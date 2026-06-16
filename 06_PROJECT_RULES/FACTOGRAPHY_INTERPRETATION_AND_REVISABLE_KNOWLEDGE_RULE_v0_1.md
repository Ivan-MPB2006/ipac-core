# RULE — Factography, Interpretation and Revisable Knowledge v0.1  
## Правила фактографического слоя, обоснованного пересмотра и сохранения права на переосмысление

```yaml
artifact_id: RULE-FACTOGRAPHY-INTERPRETATION-REVISABLE-KNOWLEDGE-001
artifact_type: project_rule
status: active_candidate_rule
version: 0.1
layer: project_rules / factography_and_trace
scope: IPaC factography layer / thread export / daily trace / interpretation / decision / canon / revisable knowledge
date: 2026-06-16
canon_update_authorized: false
field_validated: process_observed
revision_right_reserved: true
```

---

# 1. Назначение

Этот документ фиксирует правила, возникшие после практического решения проблемы отчуждения длинных ChatGPT-тредов в Markdown и загрузки их в Obsidian.

Ключевой сдвиг:

```text
Тред перестаёт быть эфемерным разговором.
Тред становится фактографическим артефактом.
```

Это создаёт нижний фундамент IPaC:

```text
Thread
→ Factography
→ Interpretation
→ Review
→ Decision
→ Canon
→ Future Reinterpretation
```

---

# 2. Главный принцип

```text
Фактография сохраняет право на будущий пересмотр.
```

Сегодняшняя интерпретация не обязана быть окончательной.

Но завтрашний пересмотр должен опираться не на воспоминания, а на зафиксированные факты.

---

# 3. Базовое различение слоёв

```text
Фактография отвечает:
что было.

Трасса отвечает:
как развивалось.

Интерпретация отвечает:
что это значило тогда.

Решение отвечает:
что мы приняли.

Канон отвечает:
во что мы верим сейчас.
```

Это различение обязательно для всех последующих daily trace, research review, decision record и canon update.

---

# 4. Правило 1 — Canon must not destroy Factography

```text
Канон не должен уничтожать фактографию.
```

Канон — это текущая рабочая версия истины проекта.

Фактография — это первичный слой событий, сообщений, материалов, решений, сомнений, ошибок, переходов и контекста, из которого канон мог возникнуть.

Поэтому запрещено:

```text
переписывать историю под текущий канон;
заменять первичный тред красивой выжимкой;
удалять неудобные промежуточные формулировки;
представлять позднюю интерпретацию как изначальную позицию.
```

Разрешено:

```text
пересматривать интерпретации;
ослаблять старые claims;
усиливать новые claims;
переоценивать решения;
делать controlled rebuild;
но при сохранённой трассе и первичной фактографии.
```

---

# 5. Правило 2 — Interpretation must be grounded in Factography

```text
Любая значимая интерпретация должна иметь опору в фактографии.
```

Если делается вывод:

```text
мы поняли;
мы решили;
мы изменили позицию;
мы усилили метод;
мы отказались от прежней формулы;
мы приняли новую границу;
```

то должно быть возможно указать:

```text
из какого треда;
из какой дневной дельты;
из какого сообщения;
из какого артефакта;
из какого review;
из какого commit;
```

этот вывод возник.

Без такой опоры это не инженерное знание, а текущее мнение.

---

# 6. Правило 3 — Change of Mind must be recorded as Knowledge Evolution

```text
Смена точки зрения должна оформляться как эволюция знания,
а не как простая замена мнения.
```

Без фактографии история выглядит так:

```text
Было мнение 1.
Потом появилось мнение 2.
Почему — неизвестно.
```

С фактографией история должна выглядеть так:

```text
На дату D1 была позиция P1.
На дату D2 появились новые данные / аргументы / артефакты.
На дату D3 проведён review.
Позиция P1 ослаблена или заменена на P2.
Причина пересмотра зафиксирована.
```

---

# 7. Правило 4 — Thread Export is the Primary Factual Layer

```text
Ежедневный экспорт треда в Markdown является первичным фактографическим слоем дня.
```

Он не заменяет Daily Trace.

Он отвечает на вопрос:

```text
что реально было сказано и создано?
```

Daily Trace отвечает на другой вопрос:

```text
что это значило для развития проекта?
```

Оба слоя обязательны, если день был значимым.

---

# 8. Правило 5 — Daily Trace must be derived from Factography

```text
Daily Trace должен собираться на основе фактографии дня,
а не только по памяти модели или человека.
```

Основные источники для Daily Trace:

```text
1. Thread Export / factual archive.
2. Git log / Git diff.
3. Daily Register.
4. Newly created artifacts.
5. Research reports / reviews / decisions.
6. Project Trace updates.
```

Запрещено:

```text
собирать итог дня только из памяти модели;
выдавать реконструкцию как первичный протокол;
подменять полный фактографический слой краткой выжимкой.
```

---

# 9. Правило 6 — Git Diff separates Physical Delta from Cognitive Delta

```text
Git Diff показывает физическую дельту.
IPaC Review выделяет когнитивную дельту.
```

Физическая дельта:

```text
какие строки, файлы, изображения, блоки Markdown были добавлены или изменены.
```

Когнитивная дельта:

```text
что нового поняла система;
какие правила возникли;
какие claims изменились;
какие границы уточнены;
какие новые артефакты стали возможны;
какие решения подготовлены.
```

Workflow:

```text
Thread Export
→ Git Commit
→ Git Diff
→ Physical Delta
→ Cognitive Delta Analysis
→ Daily Trace
→ Project Delta
```

---

# 10. Правило 7 — Full Thread and Sliced Thread are complementary

```text
Нужны оба представления:
сплошной тред и нарезанный тред.
```

Сплошной тред нужен для:

```text
полного восстановления хода взаимодействия;
проверки контекста;
поиска скрытых связей;
ретроспективного анализа.
```

Нарезанный тред нужен для:

```text
цитирования;
Project sync;
daily delta;
review;
decision preparation;
точечных ссылок.
```

Нельзя заменять одно другим.

---

# 11. Правило 8 — New Evidence may trigger Reinterpretation

```text
Поступление новых данных может запускать обоснованный пересмотр прежних интерпретаций.
```

Пересмотр допустим, если:

```text
1. Есть сохранённая фактография прежней позиции.
2. Есть новые данные или аргументы.
3. Есть review или explicit reasoning.
4. Есть запись о том, что именно изменилось.
5. Есть решение: ослабить, усилить, заменить, отправить в parking lot или сохранить прежнюю позицию.
```

Пересмотр недопустим, если:

```text
просто “теперь кажется иначе”;
источник изменения не указан;
старый контекст утрачен;
новая позиция выдаётся как всегда существовавшая.
```

---

# 12. Правило 9 — Factography is not Canon

```text
Фактография не является каноном.
```

Фактография может содержать:

```text
ошибки;
черновые мысли;
эмоции;
гипотезы;
резкие формулировки;
непроверенные утверждения;
промежуточные заблуждения;
неудачные команды;
системные сбои.
```

Её ценность не в безошибочности, а в сохранении реального хода развития.

Канон возникает только после:

```text
review;
decision;
controlled rebuild;
commit.
```

---

# 13. Правило 10 — Interpretation is time-bound

```text
Любая интерпретация имеет временной статус.
```

Она должна пониматься как:

```text
интерпретация на момент времени,
с учётом доступной тогда фактографии.
```

Поэтому для важных выводов желательно фиксировать:

```text
date;
source thread;
source artifact;
evidence base;
status;
known limitations;
revisit conditions.
```

---

# 14. Ежедневный рабочий цикл

```text
1. Открыть день явным маркером:
   ===== START_DAY YYYY-MM-DD HH:mm =====

2. Работать в треде.

3. При необходимости фиксировать важные события в Daily Register.

4. В конце дня выгрузить тред в Markdown.

5. Положить thread export в Obsidian.

6. Провести через Git.

7. Получить Git diff / physical delta.

8. Выделить cognitive delta.

9. Собрать Daily Trace.

10. Подготовить Project Delta.

11. При необходимости обновить Project Trace.
```

---

# 15. Рекомендуемые места в Vault

## Thread exports

```text
08_TRACE_AND_DECISIONS/thread_exports/
```

Пример:

```text
08_TRACE_AND_DECISIONS/thread_exports/THREAD_EXPORT_2026-06-16_IPaC_WORKING_THREAD_v0_1.md
```

## Daily register

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_REGISTER_2026-06-16_v0_1.md
```

## Daily trace

```text
08_TRACE_AND_DECISIONS/session_notes/DAILY_TRACE_2026-06-16_<topic>_v0_1.md
```

## Factography rules

```text
06_PROJECT_RULES/FACTOGRAPHY_INTERPRETATION_AND_REVISABLE_KNOWLEDGE_RULE_v0_1.md
```

---

# 16. Ключевые формулы

```text
Фактография сохраняет право на будущий пересмотр.
```

```text
Canon не должен уничтожать Factography.
```

```text
Thread Export отвечает: что было.
Daily Trace отвечает: что это значило.
```

```text
Git Diff = физическая дельта.
Cognitive Diff = смысловая дельта.
```

```text
Без фактографии изменение позиции выглядит как смена мнения.
С фактографией оно становится эволюцией знания.
```

---

# 17. Recommended placement

```text
06_PROJECT_RULES/FACTOGRAPHY_INTERPRETATION_AND_REVISABLE_KNOWLEDGE_RULE_v0_1.md
```

---

# 18. Commit recommendation

```powershell
git status

git add .\06_PROJECT_RULES\FACTOGRAPHY_INTERPRETATION_AND_REVISABLE_KNOWLEDGE_RULE_v0_1.md

git status

git commit -m "rules: add factography and revisable knowledge rule"

git push

git status
```

---

# 19. Status

```text
FACTOGRAPHY_RULE_READY_FOR_USE
APPLIES_TO_THREAD_EXPORT_DAILY_TRACE_AND_CANON_REVIEW
REVISION_RIGHT_RESERVED
CANON_LOCKED
FIELD_VALIDATION_IN_PROGRESS
```
