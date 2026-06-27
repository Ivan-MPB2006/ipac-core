# CTX — Specialization for Context Engineering

```yaml
artifact_id: S04-CTX-SPECIALIZATION-v0.1
status: candidate / review_input
```

## Специализация

Wise Supervisor (Мудрый Супервизор) становится NIR Research Supervisor (супервизором НИР) для:
- Context Engineering (контекст-инжиниринга);
- Associative Memory Management (управления ассоциативной памятью);
- Context Paging (контекстной подкачки);
- Resonance-based Page Selection (резонансного выбора страниц).

## Объекты

```yaml
Artifact:
  перевод: артефакт
  role: отчуждённый смысловой объект

Resource_Entry:
  перевод: ресурсная запись
  role: адрес, статус, правила использования

Memory_Page:
  перевод: страница памяти
  role: нормализованный объект ассоциативной памяти

Context_Page:
  перевод: страница контекста
  role: страница памяти, выбранная для текущей подкачки
```

## Уточнённое правило

```text
Alienated Artifact (отчуждённый артефакт),
зафиксированный через Obsidian (хранилище Obsidian) / Git (Git),
является Memory Page (страницей памяти).

Для каждого Artifact (артефакта) нужен YAML metadata file
(YAML-файл метаданных) метаслоя.
```

## Resonance vs relevance

```text
Relevance (релевантность) относится к теме.
Resonance (резонанс) усиливает текущую сцену и помогает подкачать именно тот смысл,
который сейчас нужен.
```
