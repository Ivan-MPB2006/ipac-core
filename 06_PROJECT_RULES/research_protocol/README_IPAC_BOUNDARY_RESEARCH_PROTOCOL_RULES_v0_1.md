# IPaC Boundary Research Protocol Rules Pack v0.1

```yaml
pack_id: IPAC-BOUNDARY-RESEARCH-PROTOCOL-RULES-001
artifact_type: rules_pack
status: ready_for_git_import
version: 0.1
date: 2026-06-13
scope: boundary research / deep research design / claims discipline / source quality / validation split
canon_update_authorized: false
```

## Назначение пакета

Этот пакет фиксирует методологический вывод:

```text
Мы перешли от “запроса на исследование”
к проектированию исследовательского станка.
```

Пакет вводит набор правил, которые должны применяться ко всем последующим boundary research sprints IPaC.

## Состав

1. `IPAC_BOUNDARY_RESEARCH_PROTOCOL_v0_1.md`
   - зонтичный протокол всего boundary research cycle;

2. `RULE_RESEARCH_DESIGN_BEFORE_RESEARCH_v0_1.md`
   - правило: сначала проектирование исследования, потом Deep Research;

3. `RULE_BOUNDARY_REDUCTION_TEST_v0_1.md`
   - правило: проверять, что теряется при сведении IPaC к соседней области;

4. `RULE_SOURCE_QUALITY_GATE_v0_1.md`
   - правило: сила вывода ограничена качеством источников;

5. `RULE_CLAIMS_LEDGER_AND_SAFE_WORDING_v0_1.md`
   - правило: вести claims ledger и безопасные формулировки;

6. `RULE_RESEARCH_SUPPORT_FIELD_VALIDATION_SPLIT_v0_1.md`
   - правило: отделять research support от field validation.

## Рекомендуемое размещение

```text
06_PROJECT_RULES/research_protocol/
```

## Рекомендуемый commit

```powershell
git add .\06_PROJECT_RULES\research_protocol\
git commit -m "rules: add IPaC boundary research protocol"
git push
git status
```
