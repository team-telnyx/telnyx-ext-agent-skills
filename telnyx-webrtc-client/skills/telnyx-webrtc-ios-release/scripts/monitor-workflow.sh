#!/bin/bash
# Monitor a GitHub Actions workflow until completion
# Usage: ./monitor-workflow.sh <workflow-name> [timeout-seconds]

set -e

WORKFLOW_NAME="$1"
TIMEOUT="${2:-600}"  # Default 10 minutes
REPO="team-telnyx/telnyx-webrtc-ios"
POLL_INTERVAL=10

if [ -z "$WORKFLOW_NAME" ]; then
  echo "Usage: $0 <workflow-name> [timeout-seconds]"
  echo "Example: $0 release-01-create-pull-request.yml 300"
  exit 1
fi

if [ -z "$GITHUB_TOKEN_TELNYX" ]; then
  echo "Error: GITHUB_TOKEN_TELNYX not set"
  exit 1
fi

echo "=== Monitoring $WORKFLOW_NAME ==="
echo "Timeout: ${TIMEOUT}s | Poll interval: ${POLL_INTERVAL}s"
echo ""

ELAPSED=0
MAX_ITERATIONS=$((TIMEOUT / POLL_INTERVAL))

for i in $(seq 1 $MAX_ITERATIONS); do
  STATUS=$(GH_TOKEN=$GITHUB_TOKEN_TELNYX gh run list \
    --repo "$REPO" \
    --workflow="$WORKFLOW_NAME" \
    --limit 1 \
    --json status,conclusion \
    --jq '.[0] | "\(.status):\(.conclusion)"' 2>/dev/null || echo "error:")
  
  echo "[$i/$MAX_ITERATIONS] Status: $STATUS"
  
  if [[ "$STATUS" == "completed:success" ]]; then
    echo ""
    echo "✅ Workflow completed successfully!"
    exit 0
  elif [[ "$STATUS" == "completed:"* ]] && [[ "$STATUS" != "completed:success" ]]; then
    echo ""
    echo "❌ Workflow failed: $STATUS"
    exit 1
  fi
  
  sleep $POLL_INTERVAL
  ELAPSED=$((ELAPSED + POLL_INTERVAL))
done

echo ""
echo "⏰ Timeout reached after ${ELAPSED}s"
echo "Workflow may still be running. Check manually:"
echo "gh run list --repo $REPO --workflow=$WORKFLOW_NAME --limit 1"
exit 1
