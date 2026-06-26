# Operating Mode Register (регистр режимов работы)

```yaml
status: candidate (кандидат)
canon_status: not_canon (не канон)
promotion_authorized: false
git_commit_authorized: false
human_approval_required: true
```

| Mode (режим) | Когда применять | Главный риск |
|---|---|---|
| Algorithmic Mode (алгоритмический режим) | ситуация стандартизирована | слепота к изменению условий |
| Template Mode (шаблонный режим) | ситуация знакомая, но требует настройки | натягивание шаблона |
| Framework Mode (режим фреймворка) | реальность слабоформализирована | избыточная абстракция |
| Search Design Mode (режим поискового проектирования) | противоречия растут быстрее закрытия | расползание |
| Human-AI Cognitive Aggregate Mode (человеко-ИИ когнитивный агрегат) | алгоритмы не выдерживают | перегрев |

```text
Algorithm (алгоритм)
→ Template (шаблон)
→ Framework (фреймворк)
→ Search Design (поисковое проектирование)
→ Human-AI Cognitive Aggregate (человеко-ИИ когнитивный агрегат)
```
