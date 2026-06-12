# Codex Task Pack Template v0.1 — Candidate

```yaml
task_pack_id: IPAC-CODEX-TASK-000
title: ""
status: draft
version: 0.1
requested_by: human_project_owner
approved_by: null
date: YYYY-MM-DD
scope: ""
layer: rules | canon | trace | research | parking | source_package | export | housekeeping
codex_authorized: false
canon_update_authorized: false
mvi_authorized: false
execution_authorized: false
rollback_required: true
```

---

## 1. Objective

One precise objective.

## 2. Background / Reason

Why this task exists.  
What review or decision authorized it.

## 3. Input Files

| Path | Role | Required? | Notes |
|---|---|---:|---|

## 4. Output Files

| Path | Action | Status After Task | Notes |
|---|---|---|---|

## 5. Allowed Commands

Exact command whitelist only.

```powershell
git status
git diff --stat
git diff
```

## 6. Forbidden Actions

- Do not modify files outside output list.
- Do not update canon unless explicitly authorized.
- Do not run unlisted scripts.
- Do not combine semantic and housekeeping changes.
- Do not push if unexpected modified files exist.
- Do not resolve ambiguity by guessing.

## 7. Execution Steps

1. Run pre-check.
2. Perform approved action only.
3. Run verification.
4. Report result.
5. Stop for Project review.

## 8. Verification Steps

```powershell
git status
git diff --stat
git diff
```

## 9. Expected Git Diff

| Path | Expected Change |
|---|---|

## 10. Commit Plan

```text
Commit type:
Files:
Message:
Reason:
```

## 11. Rollback Plan

```powershell
git restore -- <file>
```

For new uncommitted files:

```powershell
Remove-Item <file-or-folder> -Recurse -Force
```

## 12. Stop Conditions

Stop if:

- missing required input;
- unexpected diff;
- ambiguous scope;
- canon risk;
- generated export noise;
- command not in whitelist.

## 13. Final Report Format

```text
Status:
Files changed:
Files created:
Unexpected changes:
Verification result:
Rollback available:
Suggested next action:
```
