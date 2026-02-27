---
name: ios-sdk-release
description: "Automate Telnyx iOS SDK releases via GitHub Actions workflows. Use when creating a new iOS SDK release, managing release PRs, generating documentation, updating CHANGELOG, creating/updating Jira tickets, or deploying to CocoaPods. Handles the full release workflow from version bump to production deployment."
---

# iOS SDK Release Process

Automated release workflow for `team-telnyx/telnyx-webrtc-ios` using GitHub Actions and Jira integration.

## Prerequisites

- GitHub token: `$GITHUB_TOKEN_TELNYX`
- Jira access via AIDA (requires Tailscale VPN)
- Telnyx API configured (for genCred/token creation if needed)

## Release Workflow

### 0. Check for Existing Jira Ticket

**FIRST STEP**: Ask the user if they need a Jira ticket created or if one already exists.

If a ticket exists, get the ticket number. Otherwise, proceed to create one in step 6.

### 1. Create Release PR

```bash
cd ~/.openclaw/workspace-work/telnyx-webrtc-ios
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh workflow run release-01-create-pull-request.yml \
  --repo team-telnyx/telnyx-webrtc-ios \
  --ref main \
  -f version=<VERSION>
```

**What it does:**
- Bumps version in project files
- Generates changelog from PRs since last tag
- Creates release PR with testing checklist

### 2. Generate Documentation

After step 1 completes, run on the release branch:

```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh workflow run release-02-generate-docs.yml \
  --repo team-telnyx/telnyx-webrtc-ios \
  --ref release/<VERSION> \
  -f base_branch=release/<VERSION>
```

**What it does:**
- Generates Jazzy + SourceDocs
- Creates docs PR targeting release branch

### 3. Update CHANGELOG

After docs PR is created, update CHANGELOG.md on the release branch:

```bash
cd ~/.openclaw/workspace-work/telnyx-webrtc-ios
git checkout release/<VERSION>
git pull origin release/<VERSION>

# Insert new version section at top of CHANGELOG.md
# Format: See references/changelog-format.md
```

**CRITICAL CHANGELOG GUIDELINES:**
- **SDK changes only** - Do NOT include app-side or infrastructure changes (CI, linting, SwiftLint, etc.)
- **Keep it short** - Follow existing structure
- **No links in descriptions** - Links can break docs rendering. Only include PR links at the end of each bullet
- **Format**: `- **Feature Name**: Description ([#PR_NUMBER](url))`

Commit and push the CHANGELOG update.

### 4. Merge Docs PR into Release Branch

Find and merge the docs PR:

```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr list \
  --repo team-telnyx/telnyx-webrtc-ios \
  --base release/<VERSION>

GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr merge <DOCS_PR_NUMBER> \
  --merge \
  --delete-branch
```

### 5. Create Jira Ticket

Create and track the release via Jira:

```bash
mcporter call aida.jira_agent --config ~/.openclaw/workspace-work/config/mcporter.json \
  prompt="Create Jira ticket in WEBRTC project:
  - Summary: Release iOS SDK <VERSION>
  - Type: Task
  - Assignee: gbattistel
  - Labels: release, ios-sdk
  - Description: <CHANGELOG_SUMMARY>"
```

**Move to In Progress:**
```bash
mcporter call aida.jira_agent --config ~/.openclaw/workspace-work/config/mcporter.json \
  prompt="Move WEBRTC-<TICKET_NUMBER> to In Progress"
```

### 6. Wait for PR Readiness

**IMPORTANT**: Do NOT proceed until ALL of the following are met:

1. **At least one approval** on the release PR
2. **All CI checks are green** (passing)
3. **User has run manual tests**

**Check PR status:**
```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr view <RELEASE_PR_NUMBER> \
  --repo team-telnyx/telnyx-webrtc-ios \
  --json statusCheckRollup,reviewDecision
```

**Ask the user to run manual tests** on the release branch using the PR checklist template.

**Wait for user confirmation** that testing is complete.

### 7. Mark PR Checklist Complete

**ONLY after user confirms tests are done**, update the release PR checklist:

```bash
# Mark all checkboxes as complete
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr view <RELEASE_PR_NUMBER> \
  --repo team-telnyx/telnyx-webrtc-ios \
  --json body --jq '.body' > /tmp/pr-body.txt

sed 's/- \[ \]/- [x]/g' /tmp/pr-body.txt > /tmp/pr-body-updated.txt

GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr edit <RELEASE_PR_NUMBER> \
  --repo team-telnyx/telnyx-webrtc-ios \
  --body-file /tmp/pr-body-updated.txt
```

**Move Jira to In Review:**
```bash
mcporter call aida.jira_agent --config ~/.openclaw/workspace-work/config/mcporter.json \
  prompt="Move WEBRTC-<TICKET_NUMBER> to In Review"
```

**Notify user:** "Release PR is ready. All checks are complete. Please review and let me know when you're ready to merge."

### 8. Merge Release PR

**WAIT for user to explicitly request merge.** Do NOT merge automatically.

When user says "merge the PR" or similar:

```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh pr merge <RELEASE_PR_NUMBER> \
  --repo team-telnyx/telnyx-webrtc-ios \
  --merge
```

### 9. Create GitHub Release

After merge completes:

```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh workflow run release-03-create-gh-release.yml \
  --repo team-telnyx/telnyx-webrtc-ios \
  --ref main \
  -f version=<VERSION>
```

Monitor until workflow completes.

### 10. Update GitHub Release Description

After release-03 completes, update the release with the CHANGELOG entry:

```bash
# Get the changelog for this version from CHANGELOG.md
# Extract the version section (between ## [X.Y.Z] and next ## heading)

GH_TOKEN=$GITHUB_TOKEN_TELNYX gh release edit <VERSION> \
  --repo team-telnyx/telnyx-webrtc-ios \
  --notes "<CHANGELOG_CONTENT>"
```

### 11. Deploy to CocoaPods

```bash
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh workflow run release-04-deploy-cocoapods.yml \
  --repo team-telnyx/telnyx-webrtc-ios \
  --ref main
```

**Monitor workflow until completion:**
```bash
for i in {1..60}; do
  STATUS=$(GH_TOKEN=$GITHUB_TOKEN_TELNYX gh run list \
    --repo team-telnyx/telnyx-webrtc-ios \
    --workflow=release-04-deploy-cocoapods.yml \
    --limit 1 \
    --json status,conclusion \
    --jq '.[0] | "\(.status):\(.conclusion)"')
  
  [[ "$STATUS" == "completed:success" ]] && break
  [[ "$STATUS" == "completed:"* ]] && echo "❌ Failed: $STATUS" && break
  sleep 10
done
```

**If deployment fails**, notify user to re-register CocoaPods token:

> ⚠️ CocoaPods deployment failed. The trunk token likely expired.
> 
> **Re-register:**
> ```bash
> pod trunk register cocoapods+official@telnyx.com 'Telnyx LLC' --description='Telnyx official account'
> # Check email for verification link, then:
> grep -A2 'trunk.cocoapods.org' ~/.netrc
> ```
> 
> **Update GitHub Secret `COCOAPODS_TRUNK_TOKEN`:**
> 1. Copy the `password` value from `~/.netrc`
> 2. Update at: https://github.com/team-telnyx/telnyx-webrtc-ios/settings/secrets/actions
> 3. Re-run workflow

After successful deployment:

**Move Jira to Done:**
```bash
mcporter call aida.jira_agent --config ~/.openclaw/workspace-work/config/mcporter.json \
  prompt="Move WEBRTC-<TICKET_NUMBER> to Done"
```

### 12. Announce on Slack

**Automatically post to #squad-webrtc after successful CocoaPods deployment:**

```bash
# Get channel ID
CHANNEL_ID=$(slack-dir resolve "squad-webrtc" --type channel --exact --json | jq -r '.match.id')

# Get Slack bot token
BOT_TOKEN=$(jq -r '.channels.slack.botToken' ~/.openclaw/openclaw.json)

# Post announcement
curl -s -X POST https://slack.com/api/chat.postMessage \
  -H "Authorization: Bearer $BOT_TOKEN" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d '{
    "channel": "'$CHANNEL_ID'",
    "text": "🎉 Telnyx WebRTC iOS release v<VERSION>\n\n*Changes:*\n<BULLET_POINTS>\n\nRelease notes: https://github.com/team-telnyx/telnyx-webrtc-ios/releases/tag/<VERSION>\nCocoaPods: `pod update TelnyxRTC`"
  }'
```

**Message format:**
- Use `*bold*` for emphasis (Slack markdown)
- Bullet points: `• *Section*: Description`
- Keep it concise (2-3 key changes)
- Always include release notes link and CocoaPods command

## Monitoring Workflows

```bash
# Check workflow status
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh run list \
  --repo team-telnyx/telnyx-webrtc-ios \
  --workflow=<WORKFLOW_NAME> \
  --limit 1

# Watch a workflow (poll every 10s)
while true; do
  STATUS=$(GH_TOKEN=$GITHUB_TOKEN_TELNYX gh run list \
    --repo team-telnyx/telnyx-webrtc-ios \
    --workflow=<WORKFLOW_NAME> \
    --limit 1 \
    --json status,conclusion \
    --jq '.[0] | "\(.status):\(.conclusion)"')
  echo "Status: $STATUS"
  [[ "$STATUS" == "completed:success" ]] && break
  sleep 10
done
```

## Telnyx CLI Profiles

The skill uses two Telnyx API profiles:
- **`default`** (WebRTC Squad) - `webrtc.squad@telnyx.com`
- **`personal`** (Guille) - `guillermo@telnyx.com`

```bash
# Use personal account
telnyx connection list --profile personal

# Create genCred from SIP credential
API_KEY="<PERSONAL_API_KEY>"
CONNECTION_ID="<SIP_CONNECTION_ID>"

curl -s -X POST "https://api.telnyx.com/v2/telephony_credentials" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json" \
  -d "{
    \"connection_id\": \"$CONNECTION_ID\",
    \"name\": \"genCred-$(date +%Y%m%d-%H%M%S)\"
  }" | jq '.data | {sip_username, sip_password}'

# Generate token for genCred
GENCRED_ID="<GENCRED_ID>"
curl -s -X POST "https://api.telnyx.com/v2/telephony_credentials/$GENCRED_ID/token" \
  -H "Authorization: Bearer $API_KEY"
```

## References

- **[Release Checklist](references/release-checklist-template.md)** - Full testing checklist template
- **[CHANGELOG Format](references/changelog-format.md)** - CHANGELOG entry format and examples

## Troubleshooting

### Workflow fails
```bash
# View workflow run logs
GH_TOKEN=$GITHUB_TOKEN_TELNYX gh run view <RUN_ID> --log
```

### AIDA connection fails
- Verify Tailscale VPN is connected: `tailscale status`
- Test AIDA connection: `mcporter call aida.jira_agent --config ~/.openclaw/workspace-work/config/mcporter.json prompt="Test connection"`

### CocoaPods deployment fails

**Most common cause: Expired trunk token**

1. **Re-register with CocoaPods:**
   ```bash
   pod trunk register cocoapods+official@telnyx.com 'Telnyx LLC' --description='Telnyx official account'
   ```

2. **Check email** at `cocoapods+official@telnyx.com` and click verification link

3. **Get the token:**
   ```bash
   grep -A2 'trunk.cocoapods.org' ~/.netrc
   ```
   Copy the `password` value

4. **Update GitHub Secret:**
   - Go to: https://github.com/team-telnyx/telnyx-webrtc-ios/settings/secrets/actions
   - Find `COCOAPODS_TRUNK_TOKEN`
   - Update with the new password value

5. **Re-run the workflow:**
   ```bash
   GH_TOKEN=$GITHUB_TOKEN_TELNYX gh workflow run release-04-deploy-cocoapods.yml \
     --repo team-telnyx/telnyx-webrtc-ios \
     --ref main
   ```

**Other causes:**
- Check `.podspec` validity: `pod lib lint --allow-warnings`
- Verify you have maintainer access: `pod trunk me`
