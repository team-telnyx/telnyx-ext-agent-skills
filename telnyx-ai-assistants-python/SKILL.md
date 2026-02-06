---
name: telnyx-ai-assistants-python
description: >-
  Create and manage AI voice assistants with custom personalities, knowledge
  bases, and tool integrations. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: ai-assistants
  language: python
---

# Telnyx Ai Assistants - Python

## Installation

```bash
pip install telnyx
```

## List assistants

`GET /ai/assistants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistants_list = client.ai.assistants.list()
print(assistants_list.data)
```

## Create an assistant

`POST /ai/assistants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.create(
    instructions="instructions",
    model="model",
    name="name",
)
print(inference_embedding.id)
```

## Get an assistant

`GET /ai/assistants/{assistant_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.retrieve(
    assistant_id="assistant_id",
)
print(inference_embedding.id)
```

## Update an assistant

`POST /ai/assistants/{assistant_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.update(
    assistant_id="assistant_id",
)
print(inference_embedding.id)
```

## Delete an assistant

`DELETE /ai/assistants/{assistant_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistant = client.ai.assistants.delete(
    "assistant_id",
)
print(assistant.id)
```

## Assistant Chat (BETA)

`POST /ai/assistants/{assistant_id}/chat`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.assistants.chat(
    assistant_id="assistant_id",
    content="Tell me a joke about cats",
    conversation_id="42b20469-1215-4a9a-8964-c36f66b406f4",
)
print(response.content)
```

## Assistant Sms Chat

`POST /ai/assistants/{assistant_id}/chat/sms`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.assistants.send_sms(
    assistant_id="assistant_id",
    from_="from",
    to="to",
)
print(response.conversation_id)
```

## Clone Assistant

`POST /ai/assistants/{assistant_id}/clone`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.clone(
    "assistant_id",
)
print(inference_embedding.id)
```

## Import assistants from external provider

`POST /ai/assistants/import`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistants_list = client.ai.assistants.imports(
    api_key_ref="api_key_ref",
    provider="elevenlabs",
)
print(assistants_list.data)
```

## List scheduled events

`GET /ai/assistants/{assistant_id}/scheduled_events`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.assistants.scheduled_events.list(
    assistant_id="assistant_id",
)
page = page.data[0]
print(page)
```

## Create a scheduled event

`POST /ai/assistants/{assistant_id}/scheduled_events`

```python
import os
from datetime import datetime
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
scheduled_event_response = client.ai.assistants.scheduled_events.create(
    assistant_id="assistant_id",
    scheduled_at_fixed_datetime=datetime.fromisoformat("2025-04-15T13:07:28.764"),
    telnyx_agent_target="telnyx_agent_target",
    telnyx_conversation_channel="phone_call",
    telnyx_end_user_target="telnyx_end_user_target",
)
print(scheduled_event_response)
```

## Get a scheduled event

`GET /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
scheduled_event_response = client.ai.assistants.scheduled_events.retrieve(
    event_id="event_id",
    assistant_id="assistant_id",
)
print(scheduled_event_response)
```

## Delete a scheduled event

`DELETE /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.assistants.scheduled_events.delete(
    event_id="event_id",
    assistant_id="assistant_id",
)
```

## List assistant tests with pagination

`GET /ai/assistants/tests`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.assistants.tests.list()
page = page.data[0]
print(page.test_id)
```

## Create a new assistant test

`POST /ai/assistants/tests`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistant_test = client.ai.assistants.tests.create(
    destination="+15551234567",
    instructions="Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.",
    name="Customer Support Bot Test",
    rubric=[{
        "criteria": "Assistant responds within 30 seconds",
        "name": "Response Time",
    }, {
        "criteria": "Provides correct product information",
        "name": "Accuracy",
    }],
)
print(assistant_test.test_id)
```

## Get all test suite names

`GET /ai/assistants/tests/test-suites`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
test_suites = client.ai.assistants.tests.test_suites.list()
print(test_suites.data)
```

## Get test suite run history

`GET /ai/assistants/tests/test-suites/{suite_name}/runs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.assistants.tests.test_suites.runs.list(
    suite_name="suite_name",
)
page = page.data[0]
print(page.run_id)
```

## Trigger test suite execution

`POST /ai/assistants/tests/test-suites/{suite_name}/runs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
test_run_responses = client.ai.assistants.tests.test_suites.runs.trigger(
    suite_name="suite_name",
)
print(test_run_responses)
```

## Get assistant test by ID

`GET /ai/assistants/tests/{test_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistant_test = client.ai.assistants.tests.retrieve(
    "test_id",
)
print(assistant_test.test_id)
```

## Update an assistant test

`PUT /ai/assistants/tests/{test_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistant_test = client.ai.assistants.tests.update(
    test_id="test_id",
)
print(assistant_test.test_id)
```

## Delete an assistant test

`DELETE /ai/assistants/tests/{test_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.assistants.tests.delete(
    "test_id",
)
```

## Get test run history for a specific test

`GET /ai/assistants/tests/{test_id}/runs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.assistants.tests.runs.list(
    test_id="test_id",
)
page = page.data[0]
print(page.run_id)
```

## Trigger a manual test run

`POST /ai/assistants/tests/{test_id}/runs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
test_run_response = client.ai.assistants.tests.runs.trigger(
    test_id="test_id",
)
print(test_run_response.run_id)
```

## Get specific test run details

`GET /ai/assistants/tests/{test_id}/runs/{run_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
test_run_response = client.ai.assistants.tests.runs.retrieve(
    run_id="run_id",
    test_id="test_id",
)
print(test_run_response.run_id)
```

## Get all versions of an assistant

`GET /ai/assistants/{assistant_id}/versions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
assistants_list = client.ai.assistants.versions.list(
    "assistant_id",
)
print(assistants_list.data)
```

## Get a specific assistant version

`GET /ai/assistants/{assistant_id}/versions/{version_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.versions.retrieve(
    version_id="version_id",
    assistant_id="assistant_id",
)
print(inference_embedding.id)
```

## Update a specific assistant version

`POST /ai/assistants/{assistant_id}/versions/{version_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.versions.update(
    version_id="version_id",
    assistant_id="assistant_id",
)
print(inference_embedding.id)
```

## Delete a specific assistant version

`DELETE /ai/assistants/{assistant_id}/versions/{version_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.assistants.versions.delete(
    version_id="version_id",
    assistant_id="assistant_id",
)
```

## Promote an assistant version to main

`POST /ai/assistants/{assistant_id}/versions/{version_id}/promote`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inference_embedding = client.ai.assistants.versions.promote(
    version_id="version_id",
    assistant_id="assistant_id",
)
print(inference_embedding.id)
```

## Get Canary Deploy

`GET /ai/assistants/{assistant_id}/canary-deploys`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
canary_deploy_response = client.ai.assistants.canary_deploys.retrieve(
    "assistant_id",
)
print(canary_deploy_response.assistant_id)
```

## Create Canary Deploy

`POST /ai/assistants/{assistant_id}/canary-deploys`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
canary_deploy_response = client.ai.assistants.canary_deploys.create(
    assistant_id="assistant_id",
    versions=[{
        "percentage": 1,
        "version_id": "version_id",
    }],
)
print(canary_deploy_response.assistant_id)
```

## Update Canary Deploy

`PUT /ai/assistants/{assistant_id}/canary-deploys`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
canary_deploy_response = client.ai.assistants.canary_deploys.update(
    assistant_id="assistant_id",
    versions=[{
        "percentage": 1,
        "version_id": "version_id",
    }],
)
print(canary_deploy_response.assistant_id)
```

## Delete Canary Deploy

`DELETE /ai/assistants/{assistant_id}/canary-deploys`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.assistants.canary_deploys.delete(
    "assistant_id",
)
```

## Get assistant texml

`GET /ai/assistants/{assistant_id}/texml`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.assistants.get_texml(
    "assistant_id",
)
print(response)
```

## Test Assistant Tool

`POST /ai/assistants/{assistant_id}/tools/{tool_id}/test`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.assistants.tools.test(
    tool_id="tool_id",
    assistant_id="assistant_id",
)
print(response.data)
```

## List Integrations

`GET /ai/integrations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
integrations = client.ai.integrations.list()
print(integrations.data)
```

## List User Integrations

`GET /ai/integrations/connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
connections = client.ai.integrations.connections.list()
print(connections.data)
```

## Get User Integration connection By Id

`GET /ai/integrations/connections/{user_connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
connection = client.ai.integrations.connections.retrieve(
    "user_connection_id",
)
print(connection.data)
```

## Delete Integration Connection

`DELETE /ai/integrations/connections/{user_connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.integrations.connections.delete(
    "user_connection_id",
)
```

## List Integration By Id

`GET /ai/integrations/{integration_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
integration = client.ai.integrations.retrieve(
    "integration_id",
)
print(integration.id)
```

## List MCP Servers

`GET /ai/mcp_servers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.mcp_servers.list()
page = page.items[0]
print(page.id)
```

## Create MCP Server

`POST /ai/mcp_servers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mcp_server = client.ai.mcp_servers.create(
    name="name",
    type="type",
    url="url",
)
print(mcp_server.id)
```

## Get MCP Server

`GET /ai/mcp_servers/{mcp_server_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mcp_server = client.ai.mcp_servers.retrieve(
    "mcp_server_id",
)
print(mcp_server.id)
```

## Update MCP Server

`PUT /ai/mcp_servers/{mcp_server_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mcp_server = client.ai.mcp_servers.update(
    mcp_server_id="mcp_server_id",
)
print(mcp_server.id)
```

## Delete MCP Server

`DELETE /ai/mcp_servers/{mcp_server_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.mcp_servers.delete(
    "mcp_server_id",
)
```
