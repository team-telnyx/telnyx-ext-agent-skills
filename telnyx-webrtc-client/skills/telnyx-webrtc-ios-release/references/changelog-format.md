# CHANGELOG Format

## Template

```markdown
## [X.Y.Z](https://github.com/team-telnyx/telnyx-webrtc-ios/releases/tag/X.Y.Z) (YYYY-MM-DD)

### Bug Fixes
- **Feature Name**: Description of the fix and impact ([#PR_NUMBER](link))

### Features
- **Feature Name**: Description of the new feature and benefits ([#PR_NUMBER](link))

### Enhancements
- **Feature Name**: Description of the improvement ([#PR_NUMBER](link))
```

## Guidelines

- **SDK changes ONLY** - Omit app-side changes, internal infrastructure (CI, linting, SwiftLint, GitHub Actions, meta files, etc.)
- **No links in descriptions** - Do NOT include markdown links in the description text. Links can break documentation rendering. Only include PR link at the end
- **Be specific about impact** - Explain what was broken and how it's fixed
- **Keep descriptions concise** - One sentence summary, detailed impact if critical
- **Use clear section headers** - Bug Fixes, Features, Enhancements (breaking changes get special treatment)
- **Format**: `- **Feature Name**: Description text ([#PR_NUMBER](url))`

## Example (v3.1.0)

```markdown
## [3.1.0](https://github.com/team-telnyx/telnyx-webrtc-ios/releases/tag/3.1.0) (2026-02-26)

### Bug Fixes
- **Call Reject Handling**: Fixed causeCode in bye message when rejecting incoming calls. Calls rejected in NEW state now properly send causeCode 17 (USER_BUSY) instead of 16 (NORMAL_CLEARING), preventing the backend from retrying call delivery indefinitely ([#327](https://github.com/team-telnyx/telnyx-webrtc-ios/pull/327))

### Features
- **TURN Server Configuration**: Ported TURN server improvements from JS SDK for cross-platform consistency. Added UDP TURN servers as primary transport for lower latency, with TCP TURN servers as fallback for restrictive firewalls. Added Google STUN server (stun.l.google.com:19302) for redundancy. ICE server connection order: STUN → TURN UDP → TURN TCP ([#326](https://github.com/team-telnyx/telnyx-webrtc-ios/pull/326))
```

## Breaking Changes (Special Format)

For major versions with breaking changes (e.g., v3.0.0):

```markdown
## [3.0.0](https://github.com/team-telnyx/telnyx-webrtc-ios/releases/tag/3.0.0) (YYYY-MM-DD)

### ⚠️ Breaking Changes

**Action Required Title**

Brief explanation of what must be done.

**Action Required:** Implementation details or link to migration guide.

### Features
- Normal feature entries...
```
