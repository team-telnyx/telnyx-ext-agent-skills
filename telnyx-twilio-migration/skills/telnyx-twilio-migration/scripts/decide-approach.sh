#!/usr/bin/env bash
# decide-approach.sh — Deterministically decide voice approach and migration strategy
# Reads twilio-scan.json and outputs decisions to migration-state.json
#
# Usage: decide-approach.sh <project-root>
#
# Outputs (written to migration state):
#   voice_approach:      texml | call_control | both | none
#   migration_strategy:  big_bang | incremental

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

die() { echo "ERROR: $*" >&2; exit 1; }

usage() {
  echo "Usage: $0 <project-root>" >&2
  exit 1
}

[[ $# -ge 1 ]] || usage
PROJECT_ROOT="$1"
SCAN_FILE="${PROJECT_ROOT}/twilio-scan.json"

command -v jq >/dev/null 2>&1 || die "jq is required"
[[ -f "$SCAN_FILE" ]] || die "No scan file at $SCAN_FILE — run discovery first"

# ---------------------------------------------------------------------------
# Detect voice approach
# ---------------------------------------------------------------------------

products_used=$(jq -r '.products_used[]' "$SCAN_FILE" 2>/dev/null || true)
has_voice=false
has_texml=false
has_streaming=false

for p in $products_used; do
  case "$p" in
    voice) has_voice=true ;;
    texml) has_texml=true ;;
  esac
done

# Check for streaming/forking patterns in file matches
if [[ "$has_voice" == "true" ]] || [[ "$has_texml" == "true" ]]; then
  # Look for <Stream>, media streaming, audio forking patterns
  streaming_patterns=$(jq -r '
    .files[]? |
    select(.matches[]? |
      test("Stream|media.*stream|fork|startStream|<Stream"; "i")
    ) | .path' "$SCAN_FILE" 2>/dev/null || true)

  if [[ -n "$streaming_patterns" ]]; then
    has_streaming=true
  fi
fi

# Check for TwiML/VoiceResponse patterns
has_twiml=$(jq -r '.summary.has_twiml // false' "$SCAN_FILE")

# Decide voice approach
if [[ "$has_voice" == "false" ]] && [[ "$has_texml" == "false" ]]; then
  voice_approach="none"
elif [[ "$has_streaming" == "true" ]] && [[ "$has_twiml" == "true" ]]; then
  voice_approach="both"
elif [[ "$has_streaming" == "true" ]]; then
  voice_approach="call_control"
else
  voice_approach="texml"
fi

# ---------------------------------------------------------------------------
# Detect migration strategy
# ---------------------------------------------------------------------------

total_files=$(jq -r '.summary.total_files // 0' "$SCAN_FILE")
total_products=$(jq -r '.summary.total_products // 0' "$SCAN_FILE")

if [[ "$total_files" -le 10 ]] && [[ "$total_products" -le 1 ]]; then
  migration_strategy="big_bang"
else
  migration_strategy="incremental"
fi

# ---------------------------------------------------------------------------
# Write results to migration state
# ---------------------------------------------------------------------------

echo "Voice approach: $voice_approach"
echo "Migration strategy: $migration_strategy"
echo "  (files: $total_files, products: $total_products)"

bash "$SCRIPT_DIR/migration-state.sh" set "$PROJECT_ROOT" voice_approach "$voice_approach"
bash "$SCRIPT_DIR/migration-state.sh" set "$PROJECT_ROOT" migration_strategy "$migration_strategy"
