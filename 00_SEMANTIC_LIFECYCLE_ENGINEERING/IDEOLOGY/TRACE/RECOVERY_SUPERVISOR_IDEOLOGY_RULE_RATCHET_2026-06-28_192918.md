# Recovery trace: 00 ideology supervisor rule ratchet

**Stamp:** 2026-06-28_192918  
**Date:** 2026-06-28 19:29:18  
**VaultRoot:** C:\Users\Michael\Documents\50-00 IPaC\0. IPaC Project\IPaC_Obsidian_Vault_Str_v0_1_Pack  
**Operation:** recovery after failed v0.1 ratchet  
**Previous failure class:** script bug in Git helper invocation

---

## Diagnosis

The previous script failed during Git preflight and printed Git help in red.

Root cause:

``text
The internal helper used parameter name $Args and invoked git as @Args.
In PowerShell, $args is an automatic variable / dangerous name for this use.
The Git subcommand arguments were not passed correctly, so Git was effectively called without a proper subcommand and printed the generic help.
``

This was not a VaultRoot issue, not an ExecutionPolicy issue, and not a Git repository content issue.

---

## Recovery action

This recovery ratchet:

``text
1. Rewrites the 00 ideology rule file.
2. Creates this recovery trace.
3. Stages the rule file.
4. Stages all supervisor ideology trace files found in 00_*/IDEOLOGY/TRACE.
5. Creates a local Git commit.
6. Does not push.
``

---

## Target terminal state

``text
LOCAL_RATCHET_COMPLETED
PUSH_PENDING
``
