# ⚠️ BEFORE MAKING THIS REPO PUBLIC

## Security Review Checklist

This repository currently contains **internal Telnyx URLs** that should NOT be exposed publicly.

### 🔴 REQUIRED CHANGES BEFORE PUBLIC RELEASE:

#### 1. Update DEFAULT_ENDPOINT in `src/telnyx_ffl_cli/reporter.py`

**Current (PRIVATE REPO ONLY):**
```python
DEFAULT_ENDPOINT = "http://ffl-backend.query.prod.telnyx.io:3000/v2/friction"
```

**Option A: Require env var (secure but less user-friendly)**
```python
DEFAULT_ENDPOINT = None
```
- Users must set `TELNYX_FRICTION_ENDPOINT` env var
- Falls back to local mode if not set
- No internal URLs exposed

**Option B: Public endpoint (best UX, requires infrastructure)**
```python
DEFAULT_ENDPOINT = "https://api.telnyx.com/v2/friction"
```
- Requires setting up public endpoint at api.telnyx.com
- May need reverse proxy/gateway to internal service
- Zero config for users

---

#### 2. Review README.md

Remove or update any references to internal URLs:
- `ffl-backend.query.prod.telnyx.io`
- `ffl-backend.query.dev.telnyx.io`
- Any `.telnyx.io` internal domains

---

#### 3. Search for other internal URLs

```bash
# From repo root:
grep -r "\.telnyx\.io" --exclude-dir=.git --exclude="BEFORE_PUBLIC_RELEASE.md"
grep -r "query\.prod\|query\.dev" --exclude-dir=.git --exclude="BEFORE_PUBLIC_RELEASE.md"
```

Fix any matches found.

---

## Current Internal URLs in Repo

As of last check, internal URLs appear in:

1. `src/telnyx_ffl_cli/reporter.py` - DEFAULT_ENDPOINT (line ~18)
2. `README.md` - Configuration examples

---

## Alternatives to Public Release

If setting up a public endpoint is not feasible:

1. **Keep repo private** - Current approach works fine
2. **Fork for public** - Create `telnyx/friction-cli` (public) separate from `team-telnyx/aifde-ffl-cli` (private)
3. **Private package** - Distribute via private PyPI or GitHub releases to authorized users only

---

## Similar Telnyx Repos (Reference)

These internal repos also hardcode `.query.prod.telnyx.io` URLs:

- `team-telnyx/ai-data-monorepo` (slack-message-search CLI)
- AgentSkills: argocd, glm-5-litellm
- All remain **private** and hardcode internal URLs safely

If this CLI needs to stay internal-only (like the above), no changes are needed.

---

**TODO assigned to:** AI-FDE team (review before any public release decision)
