---
name: telnyx-twilio-migration
description: >-
  Migrate from Twilio to Telnyx. A step-by-step runner orchestrates the entire
  6-phase migration: discovery, planning, setup, code transformation, validation
  (with real integration tests), and cleanup. Supports voice (TwiML to TeXML, Call
  Control), messaging, WebRTC, SIP trunking, verify, fax, video, lookup, and
  number porting. Works with any coding agent.
metadata:
  author: telnyx
  product: migration
  compatibility: "Requires bash 4+, jq, curl. macOS ships bash 3.2 — install bash via Homebrew (brew install bash)."
---

# Twilio to Telnyx Migration

This skill uses a **step-by-step runner** that controls the entire migration workflow. You do NOT need to memorize phases or follow complex instructions — just run the commands below.

## How It Works

1. **Initialize**: `bash {baseDir}/scripts/runner.sh --init <project-root>`
2. **Loop**: Run `bash {baseDir}/scripts/runner.sh --next` repeatedly
3. **Follow instructions**:
   - If output shows `ACTION: script` — the runner already executed it. Call `--next` again.
   - If output shows `ACTION: agent` — do what `INSTRUCTION` says, then call `bash {baseDir}/scripts/runner.sh --done <step-id>`
   - If output shows `ACTION: input` — ask the user for the requested information, then call `bash {baseDir}/scripts/runner.sh --set <key> <value>` for each value, then `--next`
   - If output shows `RESULT: BLOCKED` — fix the issue described, then call `--next` again.
   - If output shows `RESULT: fail` — fix the issues listed, then call `--next` again (auto-retries up to 3x).
4. **Stop**: When output shows `WORKFLOW_COMPLETE`, the migration is done.

## Key Rules

- **Do NOT skip steps** — the runner enforces ordering and prerequisites.
- **Do NOT substitute your own checks** — always use the runner's built-in validation.
- **Read the reference files** when instructed — they contain the correct Twilio-to-Telnyx patterns. Do NOT use patterns from your own training data.
- **Phase 0 is the only user interaction** — the runner will ask for API key, phone number, and cost approval. After that, everything is autonomous.
- **If a step fails 3 times**, the runner will output `ESCALATE` — present the error to the user and ask for help.

## Quick Commands

| Command | Purpose |
|---------|---------|
| `runner.sh --init <root>` | Start a new migration |
| `runner.sh --next` | Execute/get the next step |
| `runner.sh --done <step-id>` | Mark an agent step as complete |
| `runner.sh --set <key> <value>` | Provide a value (API key, phone number) |
| `runner.sh --status` | Check progress |
| `runner.sh --retry` | Re-attempt a failed step |

## Reference Files

The `{baseDir}/references/` directory contains migration guides for each product. The runner will tell you exactly which files to read at each step. Do not read them all upfront — load them on demand as instructed.

The `{baseDir}/sdk-reference/{language}/` directories contain Telnyx SDK method signatures. Use these as the source of truth for API calls.
