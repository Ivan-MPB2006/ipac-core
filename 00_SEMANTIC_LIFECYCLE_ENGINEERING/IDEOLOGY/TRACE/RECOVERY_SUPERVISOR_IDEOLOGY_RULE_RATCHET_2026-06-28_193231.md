# Recovery trace: 00 ideology supervisor rule ratchet

**Stamp:** 2026-06-28_193231  
**Date:** 2026-06-28 19:32:31  
**VaultRoot:** C:\Users\Michael\Documents\50-00 IPaC\0. IPaC Project\IPaC_Obsidian_Vault_Str_v0_1_Pack  
**Operation:** recovery after failed v0.1/v0.2 ratchets  
**Previous failure classes:** helper $Args bug; Git stderr warning treated as fatal

---

## Diagnosis

The previous v0.2 script failed during git add.

Git produced a warning like:

``text
warning: in the working copy of '...', LF will be replaced by CRLF the next time Git touches it
``

This warning does not necessarily mean Git failed.

Root cause:

``text
The wrapper captured Git stderr through PowerShell redirection in a way that promoted a native stderr warning into a PowerShell error.
The correct rule is: for Git, trust ExitCode, not stderr alone.
``

---

## Recovery action

This v0.3 recovery ratchet:

``text
1. Rewrites the 00 ideology rule file.
2. Creates this recovery trace.
3. Captures Git stdout/stderr through temp files.
4. Treats Git stderr warnings as warnings when ExitCode = 0.
5. Stages only supervisor ideology rule/trace files.
6. Creates a local Git commit.
7. Does not push.
``

---

## Target terminal state

``text
LOCAL_RATCHET_COMPLETED
PUSH_PENDING
``
