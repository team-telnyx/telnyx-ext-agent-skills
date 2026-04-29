# Edge Compute

Use Telnyx Edge Compute when your AI workflow needs low-latency code execution, webhook handling, or an MCP/webhook endpoint that runs on Telnyx edge infrastructure.

## Important scope boundary

`team-telnyx/ai` does **not** manage Edge Compute lifecycle directly.

This repo helps you discover where Edge Compute fits into an AI workflow, but the actual function lifecycle is owned by:

- the `team-telnyx/edge-compute` repo
- the `telnyx-edge` CLI

That means:
- build/deploy/delete/secrets/bindings live in `telnyx-edge`
- agent/orchestration logic can live in `team-telnyx/ai`
- `team-telnyx/ai` should not pretend to replace Edge Compute

A useful mental model:
- **`ai` = brain / orchestration layer**
- **Edge Compute = low-latency hands / execution layer**

## When to use Edge Compute with `ai`

Good bridge use cases:

1. **MCP server adapters at the edge**
   - expose AI-adjacent tools close to the runtime
2. **Webhook ingestion + AI routing**
   - receive webhook traffic, normalize it, then hand off to AI logic
3. **AI-adjacent functions**
   - redaction, enrichment, scoring, post-processing, lightweight transforms

## Prerequisite: install `telnyx-edge`

Edge Compute is managed through the separate CLI:

```sh
# See the edge-compute repo for install/setup details
# https://github.com/team-telnyx/edge-compute

telnyx-edge auth login
telnyx-edge status
```

Typical lifecycle commands live there:

```sh
telnyx-edge new-func
telnyx-edge ship
telnyx-edge list
telnyx-edge delete-func
telnyx-edge secrets
telnyx-edge bindings
```

## Reference architecture

A practical pattern looks like this:

1. Use `team-telnyx/ai` for:
   - agent workflows
   - prompts/orchestration
   - guides and capability discovery
   - Telnyx API integrations
2. Use `team-telnyx/edge-compute` for:
   - function scaffolding
   - deployment
   - secrets and bindings
   - running webhook/MCP edge endpoints
3. Connect them with a stable boundary:
   - HTTP webhook
   - MCP endpoint
   - function call into an edge-hosted adapter

## Example: AI app calling an Edge endpoint

A simple pattern is to let your AI app call a deployed edge function for specialized execution.

```ts
const response = await fetch("https://<your-edge-endpoint>", {
  method: "POST",
  headers: {
    "content-type": "application/json",
    authorization: `Bearer ${process.env.TELNYX_API_KEY}`,
  },
  body: JSON.stringify({
    task: "redact_pii",
    payload: {
      text: "Call me at +1 555 123 4567",
    },
  }),
});

const result = await response.json();
console.log(result);
```

## What this repo should and should not claim

This repo **can**:
- explain how Edge Compute fits into AI-agent workflows
- provide examples and bridge guidance
- point users to the right product surface

This repo **should not** claim that it:
- deploys edge functions directly
- manages rollbacks or lifecycle state
- replaces `telnyx-edge`
- provides complete native Edge Compute support

## Best next step

If you want to use Edge Compute from an AI workflow today:

1. install and authenticate `telnyx-edge`
2. create/deploy your function in `team-telnyx/edge-compute`
3. use `team-telnyx/ai` to orchestrate calls into that deployed endpoint

For deploy/runtime specifics, use the `edge-compute` repo as the source of truth.
