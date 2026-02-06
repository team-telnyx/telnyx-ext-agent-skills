---
name: telnyx-ai-assistants-ruby
description: >-
  Create and manage AI voice assistants with custom personalities, knowledge
  bases, and tool integrations. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: ai-assistants
  language: ruby
---

# Telnyx Ai Assistants - Ruby

## Installation

```bash
gem install telnyx
```

## List assistants

`GET /ai/assistants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistants_list = telnyx.ai.assistants.list

puts(assistants_list)
```

## Create an assistant

`POST /ai/assistants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.create(instructions: "instructions", model: "model", name: "name")

puts(inference_embedding)
```

## Get an assistant

`GET /ai/assistants/{assistant_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.retrieve("assistant_id")

puts(inference_embedding)
```

## Update an assistant

`POST /ai/assistants/{assistant_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.update("assistant_id")

puts(inference_embedding)
```

## Delete an assistant

`DELETE /ai/assistants/{assistant_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistant = telnyx.ai.assistants.delete("assistant_id")

puts(assistant)
```

## Assistant Chat (BETA)

`POST /ai/assistants/{assistant_id}/chat`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.assistants.chat(
  "assistant_id",
  content: "Tell me a joke about cats",
  conversation_id: "42b20469-1215-4a9a-8964-c36f66b406f4"
)

puts(response)
```

## Assistant Sms Chat

`POST /ai/assistants/{assistant_id}/chat/sms`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.assistants.send_sms("assistant_id", from: "from", to: "to")

puts(response)
```

## Clone Assistant

`POST /ai/assistants/{assistant_id}/clone`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.clone_("assistant_id")

puts(inference_embedding)
```

## Import assistants from external provider

`POST /ai/assistants/import`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistants_list = telnyx.ai.assistants.imports(api_key_ref: "api_key_ref", provider: :elevenlabs)

puts(assistants_list)
```

## List scheduled events

`GET /ai/assistants/{assistant_id}/scheduled_events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.assistants.scheduled_events.list("assistant_id")

puts(page)
```

## Create a scheduled event

`POST /ai/assistants/{assistant_id}/scheduled_events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

scheduled_event_response = telnyx.ai.assistants.scheduled_events.create(
  "assistant_id",
  scheduled_at_fixed_datetime: "2025-04-15T13:07:28.764Z",
  telnyx_agent_target: "telnyx_agent_target",
  telnyx_conversation_channel: :phone_call,
  telnyx_end_user_target: "telnyx_end_user_target"
)

puts(scheduled_event_response)
```

## Get a scheduled event

`GET /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

scheduled_event_response = telnyx.ai.assistants.scheduled_events.retrieve("event_id", assistant_id: "assistant_id")

puts(scheduled_event_response)
```

## Delete a scheduled event

`DELETE /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.assistants.scheduled_events.delete("event_id", assistant_id: "assistant_id")

puts(result)
```

## List assistant tests with pagination

`GET /ai/assistants/tests`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.assistants.tests.list

puts(page)
```

## Create a new assistant test

`POST /ai/assistants/tests`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistant_test = telnyx.ai.assistants.tests.create(
  destination: "+15551234567",
  instructions: "Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.",
  name: "Customer Support Bot Test",
  rubric: [
    {criteria: "Assistant responds within 30 seconds", name: "Response Time"},
    {criteria: "Provides correct product information", name: "Accuracy"}
  ]
)

puts(assistant_test)
```

## Get all test suite names

`GET /ai/assistants/tests/test-suites`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

test_suites = telnyx.ai.assistants.tests.test_suites.list

puts(test_suites)
```

## Get test suite run history

`GET /ai/assistants/tests/test-suites/{suite_name}/runs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.assistants.tests.test_suites.runs.list("suite_name")

puts(page)
```

## Trigger test suite execution

`POST /ai/assistants/tests/test-suites/{suite_name}/runs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

test_run_responses = telnyx.ai.assistants.tests.test_suites.runs.trigger("suite_name")

puts(test_run_responses)
```

## Get assistant test by ID

`GET /ai/assistants/tests/{test_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistant_test = telnyx.ai.assistants.tests.retrieve("test_id")

puts(assistant_test)
```

## Update an assistant test

`PUT /ai/assistants/tests/{test_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistant_test = telnyx.ai.assistants.tests.update("test_id")

puts(assistant_test)
```

## Delete an assistant test

`DELETE /ai/assistants/tests/{test_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.assistants.tests.delete("test_id")

puts(result)
```

## Get test run history for a specific test

`GET /ai/assistants/tests/{test_id}/runs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.assistants.tests.runs.list("test_id")

puts(page)
```

## Trigger a manual test run

`POST /ai/assistants/tests/{test_id}/runs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

test_run_response = telnyx.ai.assistants.tests.runs.trigger("test_id")

puts(test_run_response)
```

## Get specific test run details

`GET /ai/assistants/tests/{test_id}/runs/{run_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

test_run_response = telnyx.ai.assistants.tests.runs.retrieve("run_id", test_id: "test_id")

puts(test_run_response)
```

## Get all versions of an assistant

`GET /ai/assistants/{assistant_id}/versions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

assistants_list = telnyx.ai.assistants.versions.list("assistant_id")

puts(assistants_list)
```

## Get a specific assistant version

`GET /ai/assistants/{assistant_id}/versions/{version_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.versions.retrieve("version_id", assistant_id: "assistant_id")

puts(inference_embedding)
```

## Update a specific assistant version

`POST /ai/assistants/{assistant_id}/versions/{version_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.versions.update("version_id", assistant_id: "assistant_id")

puts(inference_embedding)
```

## Delete a specific assistant version

`DELETE /ai/assistants/{assistant_id}/versions/{version_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.assistants.versions.delete("version_id", assistant_id: "assistant_id")

puts(result)
```

## Promote an assistant version to main

`POST /ai/assistants/{assistant_id}/versions/{version_id}/promote`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inference_embedding = telnyx.ai.assistants.versions.promote("version_id", assistant_id: "assistant_id")

puts(inference_embedding)
```

## Get Canary Deploy

`GET /ai/assistants/{assistant_id}/canary-deploys`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

canary_deploy_response = telnyx.ai.assistants.canary_deploys.retrieve("assistant_id")

puts(canary_deploy_response)
```

## Create Canary Deploy

`POST /ai/assistants/{assistant_id}/canary-deploys`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

canary_deploy_response = telnyx.ai.assistants.canary_deploys.create(
  "assistant_id",
  versions: [{percentage: 1, version_id: "version_id"}]
)

puts(canary_deploy_response)
```

## Update Canary Deploy

`PUT /ai/assistants/{assistant_id}/canary-deploys`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

canary_deploy_response = telnyx.ai.assistants.canary_deploys.update(
  "assistant_id",
  versions: [{percentage: 1, version_id: "version_id"}]
)

puts(canary_deploy_response)
```

## Delete Canary Deploy

`DELETE /ai/assistants/{assistant_id}/canary-deploys`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.assistants.canary_deploys.delete("assistant_id")

puts(result)
```

## Get assistant texml

`GET /ai/assistants/{assistant_id}/texml`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.assistants.get_texml("assistant_id")

puts(response)
```

## Test Assistant Tool

`POST /ai/assistants/{assistant_id}/tools/{tool_id}/test`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.assistants.tools.test_("tool_id", assistant_id: "assistant_id")

puts(response)
```

## List Integrations

`GET /ai/integrations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

integrations = telnyx.ai.integrations.list

puts(integrations)
```

## List User Integrations

`GET /ai/integrations/connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

connections = telnyx.ai.integrations.connections.list

puts(connections)
```

## Get User Integration connection By Id

`GET /ai/integrations/connections/{user_connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

connection = telnyx.ai.integrations.connections.retrieve("user_connection_id")

puts(connection)
```

## Delete Integration Connection

`DELETE /ai/integrations/connections/{user_connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.integrations.connections.delete("user_connection_id")

puts(result)
```

## List Integration By Id

`GET /ai/integrations/{integration_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

integration = telnyx.ai.integrations.retrieve("integration_id")

puts(integration)
```

## List MCP Servers

`GET /ai/mcp_servers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.mcp_servers.list

puts(page)
```

## Create MCP Server

`POST /ai/mcp_servers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mcp_server = telnyx.ai.mcp_servers.create(name: "name", type: "type", url: "url")

puts(mcp_server)
```

## Get MCP Server

`GET /ai/mcp_servers/{mcp_server_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mcp_server = telnyx.ai.mcp_servers.retrieve("mcp_server_id")

puts(mcp_server)
```

## Update MCP Server

`PUT /ai/mcp_servers/{mcp_server_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mcp_server = telnyx.ai.mcp_servers.update("mcp_server_id")

puts(mcp_server)
```

## Delete MCP Server

`DELETE /ai/mcp_servers/{mcp_server_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.mcp_servers.delete("mcp_server_id")

puts(result)
```
