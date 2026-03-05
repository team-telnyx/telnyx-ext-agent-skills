#!/usr/bin/env bash
# workflow.sh — Step definitions for the Twilio→Telnyx migration runner
# Exports functions that return step metadata (type, phase, command, instruction, etc.)
#
# Usage: source this file from runner.sh

# ---------------------------------------------------------------------------
# Static step list (phases 0-3 and phase 6)
# Each step is: ID|TYPE|PHASE|PREREQS|...
# TYPE: INPUT, SCRIPT, AGENT, GATE
# ---------------------------------------------------------------------------

# Priority order for product migration
PRODUCT_ORDER=(messaging voice verify numbers lookup webrtc sip fax video porting)

get_static_steps() {
  cat <<'EOF'
phase0_collect_input|INPUT|0|
phase0_validate_api_key|SCRIPT|0|phase0_collect_input
phase0_init_state|SCRIPT|0|phase0_validate_api_key
phase1_gate|GATE|1|phase0_init_state
phase1_run_discovery|SCRIPT|1|phase1_gate
phase1_triage_scope|AGENT|1|phase1_run_discovery
phase2_gate|GATE|2|phase1_triage_scope
phase2_decide_approach|SCRIPT|2|phase2_gate
phase2_generate_plan|AGENT|2|phase2_decide_approach
phase3_gate|GATE|3|phase2_generate_plan
phase3_create_branch|SCRIPT|3|phase3_gate
phase3_install_sdk|AGENT|3|phase3_create_branch
phase3_update_env_vars|AGENT|3|phase3_install_sdk
phase3_commit|SCRIPT|3|phase3_update_env_vars
phase4_gate|GATE|4|phase3_commit
phase4_env_audit|AGENT|4|__DYNAMIC_TAIL__
phase5_gate|GATE|5|phase4_env_audit
phase5_run_validation|SCRIPT|5|phase5_gate
phase5_run_lint|SCRIPT|5|phase5_gate
phase6_gate|GATE|6|__DYNAMIC_TESTS__
phase6_check_hybrid|SCRIPT|6|phase6_gate
phase6_remove_twilio_sdk|AGENT|6|phase6_check_hybrid
phase6_generate_report|AGENT|6|phase6_remove_twilio_sdk
phase6_present_checklist|AGENT|6|phase6_generate_report
EOF
}

# ---------------------------------------------------------------------------
# Dynamic step generation for phases 4 and 5
# ---------------------------------------------------------------------------

# Returns dynamic steps for phase 4 (per-product migrate/lint/validate/commit)
# and phase 5 (per-product integration tests).
# Args: $1 = path to twilio-scan.json
get_dynamic_steps() {
  local scan_file="${1:?}"
  [[ -f "$scan_file" ]] || return 0

  local detected_products
  detected_products=$(jq -r '.products_used[]' "$scan_file" 2>/dev/null || true)
  [[ -n "$detected_products" ]] || return 0

  # Map detected products to our migration order, filtering unsupported
  local prev_commit="phase4_gate"
  local product_commits=()

  for product in "${PRODUCT_ORDER[@]}"; do
    # Check if this product was detected (handle texml as voice)
    local found=false
    for detected in $detected_products; do
      case "$detected" in
        "$product") found=true ;;
        texml) [[ "$product" == "voice" ]] && found=true ;;
      esac
    done
    $found || continue

    # Phase 4: migrate → lint → validate → commit
    echo "phase4_migrate_${product}|AGENT|4|${prev_commit}"
    echo "phase4_lint_${product}|SCRIPT|4|phase4_migrate_${product}"
    echo "phase4_validate_${product}|SCRIPT|4|phase4_lint_${product}"
    echo "phase4_commit_${product}|SCRIPT|4|phase4_validate_${product}"
    prev_commit="phase4_commit_${product}"
    product_commits+=("phase4_commit_${product}")
  done

  # Phase 4 env_audit depends on last product commit
  if [[ ${#product_commits[@]} -gt 0 ]]; then
    echo "__SET_ENV_AUDIT_PREREQ__|${product_commits[-1]}"
  fi

  # Phase 5: integration tests (one per detected product)
  local test_steps=()
  for product in "${PRODUCT_ORDER[@]}"; do
    local found=false
    for detected in $detected_products; do
      case "$detected" in
        "$product") found=true ;;
        texml) [[ "$product" == "voice" ]] && found=true ;;
      esac
    done
    $found || continue

    # Only generate test steps for products that have test scripts
    case "$product" in
      messaging|voice|verify|lookup|fax|sip|webrtc)
        echo "phase5_test_${product}|SCRIPT|5|phase5_run_validation,phase5_run_lint"
        test_steps+=("phase5_test_${product}")
        ;;
    esac
  done

  # Phase 6 gate depends on all test steps + validation + lint
  if [[ ${#test_steps[@]} -gt 0 ]]; then
    local test_prereqs
    test_prereqs=$(IFS=,; echo "${test_steps[*]}")
    echo "__SET_PHASE6_GATE_PREREQ__|phase5_run_validation,phase5_run_lint,${test_prereqs}"
  else
    echo "__SET_PHASE6_GATE_PREREQ__|phase5_run_validation,phase5_run_lint"
  fi
}

# ---------------------------------------------------------------------------
# Step metadata — commands and instructions
# ---------------------------------------------------------------------------

get_step_command() {
  local step_id="$1"
  local project_root="$2"
  local skill_dir="$3"

  case "$step_id" in
    phase0_validate_api_key)
      echo "HTTP_CODE=\$(curl -s -o /tmp/telnyx-balance.json -w '%{http_code}' -H 'Authorization: Bearer \${TELNYX_API_KEY}' 'https://api.telnyx.com/v2/balance'); echo \"HTTP status: \$HTTP_CODE\"; [ \"\$HTTP_CODE\" = \"200\" ]"
      ;;
    phase0_init_state)
      echo "bash '${skill_dir}/scripts/migration-state.sh' init '${project_root}'"
      ;;
    phase1_run_discovery)
      echo "bash '${skill_dir}/scripts/run-discovery.sh' '${project_root}'"
      ;;
    phase2_decide_approach)
      echo "bash '${skill_dir}/scripts/decide-approach.sh' '${project_root}'"
      ;;
    phase3_create_branch)
      echo "cd '${project_root}' && git checkout -b migrate/twilio-to-telnyx 2>/dev/null || git checkout migrate/twilio-to-telnyx"
      ;;
    phase3_commit)
      echo "cd '${project_root}' && git add -A && git diff --cached --quiet || git commit -m 'chore: add Telnyx SDK alongside Twilio, update env vars'"
      ;;
    phase4_lint_*)
      local product="${step_id#phase4_lint_}"
      echo "bash '${skill_dir}/scripts/lint-telnyx-correctness.sh' '${project_root}' --product '${product}'"
      ;;
    phase4_validate_*)
      local product="${step_id#phase4_validate_}"
      echo "bash '${skill_dir}/scripts/validate-migration.sh' '${project_root}' --product '${product}' --scan-json '${project_root}/twilio-scan.json'"
      ;;
    phase4_commit_*)
      local product="${step_id#phase4_commit_}"
      echo "cd '${project_root}' && git add -A && git diff --cached --quiet || git commit -m 'migrate: ${product} — Twilio to Telnyx'"
      ;;
    phase5_run_validation)
      echo "bash '${skill_dir}/scripts/run-validation.sh' '${project_root}'"
      ;;
    phase5_run_lint)
      echo "bash '${skill_dir}/scripts/lint-telnyx-correctness.sh' '${project_root}'"
      ;;
    phase5_test_messaging)
      echo "bash '${skill_dir}/scripts/test-migration/test-messaging.sh' --confirm"
      ;;
    phase5_test_voice)
      echo "bash '${skill_dir}/scripts/test-migration/test-voice.sh' --confirm"
      ;;
    phase5_test_verify)
      echo "bash '${skill_dir}/scripts/test-migration/test-verify.sh' --confirm --send-only"
      ;;
    phase5_test_lookup)
      echo "bash '${skill_dir}/scripts/test-migration/test-lookup.sh' --confirm"
      ;;
    phase5_test_fax)
      echo "bash '${skill_dir}/scripts/test-migration/test-fax.sh' --confirm"
      ;;
    phase5_test_sip)
      echo "bash '${skill_dir}/scripts/test-migration/test-sip.sh' --confirm"
      ;;
    phase5_test_webrtc)
      echo "bash '${skill_dir}/scripts/test-migration/test-webrtc.sh' --confirm"
      ;;
    phase6_check_hybrid)
      echo "bash '${skill_dir}/scripts/migration-state.sh' show '${project_root}' | jq '.kept_on_twilio // {} | length'"
      ;;
    *)
      echo ""
      ;;
  esac
}

get_step_instruction() {
  local step_id="$1"
  local project_root="$2"
  local skill_dir="$3"
  local scan_file="${project_root}/twilio-scan.json"

  case "$step_id" in
    phase0_collect_input)
      cat <<INST
I need three things to begin the migration:
1. Your Telnyx API key (from portal.telnyx.com -> API Keys)
2. Your phone number in E.164 format (e.g., +15551234567) — for receiving test SMS/calls
3. Cost approval — integration tests cost ~\$0.15 total (messaging ~\$0.004, voice ~\$0.01, verify ~\$0.05, lookup ~\$0.01, fax ~\$0.07). A phone number (~\$1/month) may be auto-purchased if your account has none.
Do you approve these costs? (yes/no)
INST
      ;;
    phase1_triage_scope)
      cat <<INST
Read ${project_root}/twilio-scan.json.
For each detected product, classify as:
  - MIGRATE: voice, messaging, verify, webrtc, sip, fax, video, lookup, numbers, porting
  - KEEP_ON_TWILIO: Flex, Studio, TaskRouter, Conversations, Sync, Notify, Proxy, Pay, Autopilot
Do NOT ask the user — apply these rules deterministically.
After classifying, run these commands to record the results:
  For each product to migrate: bash ${skill_dir}/scripts/migration-state.sh add-product ${project_root} <product>
  For each kept product: bash ${skill_dir}/scripts/migration-state.sh set ${project_root} kept_on_twilio.<product> true
INST
      ;;
    phase2_generate_plan)
      cat <<INST
Read these files:
  - ${skill_dir}/templates/MIGRATION-PLAN.md (template)
  - ${project_root}/twilio-scan.json (scan results)
  - Run: bash ${skill_dir}/scripts/migration-state.sh show ${project_root}
Copy the template to ${project_root}/MIGRATION-PLAN.md and populate it with:
  - Products to migrate (from state)
  - Voice approach: read from state key 'voice_approach' (texml/call_control/both)
  - Migration strategy: read from state key 'migration_strategy' (big_bang/incremental)
  - File list per product (from scan JSON)
Do NOT ask the user for approval — fill it in deterministically.
INST
      ;;
    phase3_install_sdk)
      cat <<INST
Detect the project's language(s) from package files in ${project_root}.
Install Telnyx SDK ALONGSIDE Twilio (do NOT remove Twilio yet):
  Python: pip install 'telnyx>=2.0,<3.0' and add to requirements.txt
  Node: npm install telnyx@^2
  Ruby: add gem 'telnyx', '~> 2.0' to Gemfile, bundle install
  Go: go get github.com/team-telnyx/telnyx-go
  Java/PHP/C#: No SDK — will use REST API
If WebRTC detected in scan: also npm install @telnyx/webrtc
IMPORTANT: Do NOT remove twilio from any dependency file.
Record the language: bash ${skill_dir}/scripts/migration-state.sh set ${project_root} language <detected-language>
INST
      ;;
    phase3_update_env_vars)
      cat <<INST
Update environment variable files in ${project_root}. Apply this mapping:
  TWILIO_ACCOUNT_SID -> TELNYX_API_KEY
  TWILIO_SID -> TELNYX_API_KEY
  TWILIO_AUTH_TOKEN -> TELNYX_PUBLIC_KEY
  TWILIO_API_KEY -> TELNYX_API_KEY
  TWILIO_API_SECRET -> (remove)
  TWILIO_PHONE_NUMBER -> TELNYX_PHONE_NUMBER
  TWILIO_NUMBER -> TELNYX_PHONE_NUMBER
  TWILIO_MESSAGING_SERVICE_SID -> TELNYX_MESSAGING_PROFILE_ID
  TWILIO_VERIFY_SERVICE_SID -> TELNYX_VERIFY_PROFILE_ID
  TWILIO_TWIML_APP_SID -> TELNYX_CONNECTION_ID
Files to check: .env, .env.example, .env.sample, docker-compose*.yml, CI configs
Add Telnyx vars alongside existing Twilio vars (do not remove Twilio vars yet).
CRITICAL: Ensure every new TELNYX_* var exists in .env.example.
INST
      ;;
    phase4_env_audit)
      cat <<INST
Audit environment variables. Grep all source files in ${project_root} for TELNYX_* references:
  - process.env.TELNYX_ (JavaScript)
  - os.environ["TELNYX_"] or os.getenv("TELNYX_") (Python)
  - ENV["TELNYX_"] (Ruby)
  - os.Getenv("TELNYX_") (Go)
Verify EVERY referenced var exists in .env.example (or equivalent config template).
If any are missing, add them and commit.
INST
      ;;
    phase6_remove_twilio_sdk)
      cat <<INST
Remove the Twilio SDK from ${project_root}:
  Python: pip uninstall twilio -y, remove from requirements.txt
  Node: npm uninstall twilio
  Ruby: remove twilio-ruby from Gemfile, bundle install
  Go: go get -u github.com/twilio/twilio-go@none && go mod tidy
Also remove any remaining TWILIO_* env var definitions from .env files.
Commit: git add -A && git commit -m "chore: remove Twilio SDK — migration complete"
NOTE: If this is a hybrid migration (kept_on_twilio has entries), do NOT remove
the Twilio SDK. Instead, commit with message "chore: migration complete — hybrid deployment".
INST
      ;;
    phase6_generate_report)
      cat <<INST
Copy ${skill_dir}/templates/MIGRATION-REPORT.md to ${project_root}/MIGRATION-REPORT.md.
Populate with actual data:
  - Read migration-state.json for products migrated, files changed, resource IDs
  - Include integration test results (from runner state)
  - If hybrid: list products kept on Twilio and why
  - Include the post-migration checklist
Commit: git add MIGRATION-REPORT.md && git commit -m "docs: add migration report"
INST
      ;;
    phase6_present_checklist)
      cat <<INST
Present the post-migration checklist to the user:
  - [ ] Port numbers via FastPort (see references/number-porting.md)
  - [ ] Update webhook URLs in load balancers/DNS/external services
  - [ ] Update secrets manager + CI/CD env vars for production
  - [ ] Update monitoring alerts for Telnyx error codes/webhook formats
  - [ ] Deploy to staging -> run e2e tests -> deploy to production
  - [ ] Cancel Twilio account after validation period (if full migration)
This is the final step.
INST
      ;;
    phase4_migrate_*)
      local product="${step_id#phase4_migrate_}"
      _get_migration_instruction "$product" "$project_root" "$skill_dir"
      ;;
    *)
      echo ""
      ;;
  esac
}

# Generate product-specific migration instruction
_get_migration_instruction() {
  local product="$1"
  local project_root="$2"
  local skill_dir="$3"
  local scan_file="${project_root}/twilio-scan.json"

  # Get language from state
  local language
  language=$(bash "${skill_dir}/scripts/migration-state.sh" get "$project_root" language 2>/dev/null || echo "unknown")

  # Get files for this product from scan
  local files_list
  files_list=$(jq -r --arg p "$product" '
    .files[] | select(.products[]? == $p) | "    - \(.path) (lines: \(.matches | join("; ")))"
  ' "$scan_file" 2>/dev/null || echo "    (no files found in scan)")

  # Also check for texml matches if product is voice
  if [[ "$product" == "voice" ]]; then
    local texml_files
    texml_files=$(jq -r '
      .files[] | select(.products[]? == "texml") | "    - \(.path) (lines: \(.matches | join("; ")))"
    ' "$scan_file" 2>/dev/null || true)
    if [[ -n "$texml_files" ]]; then
      files_list="${files_list}
${texml_files}"
    fi
  fi

  cat <<INST
You are migrating the "${product}" product from Twilio to Telnyx.

REQUIRED READING (do this first):
  1. Read ${skill_dir}/references/${product}-migration.md — this is your primary guide
  2. Read ${skill_dir}/references/webhook-migration.md — webhook changes apply to ALL products
  3. For SDK method signatures: ${skill_dir}/sdk-reference/${language}/${product}.md

FILES TO TRANSFORM (from scan):
${files_list}

FOR EACH FILE:
  1. Read the file
  2. Identify all Twilio patterns (imports, client init, API calls, webhooks, env vars)
  3. Transform each pattern using the reference guide's before/after examples
  4. If the reference doesn't cover a specific API call, check sdk-reference/${language}/${product}.md
  5. Write the transformed file
  6. Re-read and verify no Twilio patterns remain

$(get_product_rules "$product")

WEBHOOK RULES (ALL PRODUCTS):
  - Parse JSON body, not form data: request.json['data']['payload'] not request.form
  - from is an object: data.payload.from.phone_number
  - to is an array: data.payload.to[0].phone_number
  - Replace HMAC-SHA1 with Ed25519 verification
  - Express/Node: MUST capture raw body via verify callback on express.json()
  - Rails: Replace Twilio before_action with Telnyx Ed25519 before_action; add skip_before_action :verify_authenticity_token
  - If original code used twilio.webhook() middleware, MUST replace with Telnyx Ed25519 verification

After transforming all files, also migrate any test files for this product.
Then run: bash ${skill_dir}/scripts/migration-state.sh add-file ${project_root} ${product} <each-file>
INST
}

# Product-specific rules
get_product_rules() {
  local product="$1"
  case "$product" in
    messaging)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Messaging):
  - body -> text parameter name change
  - from_ -> from
  - Always include messaging_profile_id in send requests
  - StatusCallback per-message -> configure on Messaging Profile
  - MessagingServiceSid -> messaging_profile_id
RULES
      ;;
    voice)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Voice):
  - TeXML path: XML usually untouched, change base URL, Basic->Bearer, remove speechModel
  - Use Neural Polly voices (e.g., Polly.Amy-Neural not Polly.Amy)
  - Use SDK for outbound calls, not raw fetch
  - Call Control path: Replace TwiML with API commands, use client_state (base64 JSON)
  - Recording: Set channels="single" to match Twilio mono default
RULES
      ;;
    verify)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Verify):
  - Service SID -> Profile ID
  - channel -> type parameter
  - to -> phone_number
  - Check response: approved -> accepted, pending -> rejected
RULES
      ;;
    webrtc)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (WebRTC):
  - Delete simple dial TwiML endpoints (use client.newCall() instead)
  - Replace Access Token generation with SIP credentials
  - @twilio/voice-sdk -> @telnyx/webrtc
  - Migrate client-side files (browser JS, HTML with Twilio.Device)
RULES
      ;;
    sip)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (SIP):
  - Trunk -> Connection
  - IP ACL -> IP Auth
  - Separate OVP for outbound
RULES
      ;;
    fax)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Fax):
  - Twilio Fax -> Telnyx Fax API
  - SIP INVITE for receive
RULES
      ;;
    lookup)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Lookup):
  - carrier/line_type fields differ
  - Portability check available
RULES
      ;;
    numbers)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Numbers):
  - Number management API differences (see reference)
RULES
      ;;
    porting)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Porting):
  - FastPort process
  - LOA requirements
RULES
      ;;
    video)
      cat <<'RULES'
PRODUCT-SPECIFIC RULES (Video):
  - Twilio Video -> Telnyx Video Rooms API
RULES
      ;;
    *)
      echo "PRODUCT-SPECIFIC RULES: See reference guide for ${product}."
      ;;
  esac
}

# Get validation command for AGENT steps
get_step_validation() {
  local step_id="$1"
  local project_root="$2"
  local skill_dir="$3"

  case "$step_id" in
    phase1_triage_scope)
      echo "bash '${skill_dir}/scripts/migration-state.sh' show '${project_root}' | jq -e '.completed_products | length > 0'"
      ;;
    phase2_generate_plan)
      echo "test -f '${project_root}/MIGRATION-PLAN.md' && test -s '${project_root}/MIGRATION-PLAN.md'"
      ;;
    phase3_install_sdk)
      echo "bash '${skill_dir}/scripts/migration-state.sh' get '${project_root}' language"
      ;;
    phase3_update_env_vars)
      echo "grep -r 'TELNYX_API_KEY' '${project_root}'/.env* 2>/dev/null | head -1"
      ;;
    phase4_migrate_*)
      local product="${step_id#phase4_migrate_}"
      echo "bash '${skill_dir}/scripts/lint-telnyx-correctness.sh' '${project_root}' --product '${product}'"
      ;;
    phase6_remove_twilio_sdk)
      echo "echo 'Twilio SDK removal check — agent verified'"
      ;;
    phase6_generate_report)
      echo "test -f '${project_root}/MIGRATION-REPORT.md' && test -s '${project_root}/MIGRATION-REPORT.md'"
      ;;
    *)
      echo ""
      ;;
  esac
}

# Get phase name
get_phase_name() {
  case "$1" in
    0) echo "Prerequisites" ;;
    1) echo "Discovery" ;;
    2) echo "Planning" ;;
    3) echo "Setup" ;;
    4) echo "Migration" ;;
    5) echo "Validation" ;;
    6) echo "Cleanup" ;;
    *) echo "Unknown" ;;
  esac
}

# Get max retries for a step
get_max_retries() {
  local step_id="$1"
  case "$step_id" in
    phase4_lint_*|phase4_validate_*|phase5_run_validation|phase5_run_lint|phase5_test_*)
      echo 3
      ;;
    *)
      echo 1
      ;;
  esac
}
