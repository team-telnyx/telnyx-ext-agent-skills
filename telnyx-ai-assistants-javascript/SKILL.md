---
name: telnyx-ai-assistants-javascript
description: >-
  Create and manage AI voice assistants with custom personalities, knowledge
  bases, and tool integrations. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: ai-assistants
  language: javascript
---

# Telnyx Ai Assistants - JavaScript

## Installation

```bash
npm install telnyx
```

## List assistants

`GET /ai/assistants`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantsList = await client.ai.assistants.list();

console.log(assistantsList.data);
```

## Create an assistant

`POST /ai/assistants`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.create({
  instructions: 'instructions',
  model: 'model',
  name: 'name',
});

console.log(inferenceEmbedding.id);
```

## Get an assistant

`GET /ai/assistants/{assistant_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.retrieve('assistant_id');

console.log(inferenceEmbedding.id);
```

## Update an assistant

`POST /ai/assistants/{assistant_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.update('assistant_id');

console.log(inferenceEmbedding.id);
```

## Delete an assistant

`DELETE /ai/assistants/{assistant_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistant = await client.ai.assistants.delete('assistant_id');

console.log(assistant.id);
```

## Assistant Chat (BETA)

`POST /ai/assistants/{assistant_id}/chat`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.assistants.chat('assistant_id', {
  content: 'Tell me a joke about cats',
  conversation_id: '42b20469-1215-4a9a-8964-c36f66b406f4',
});

console.log(response.content);
```

## Assistant Sms Chat

`POST /ai/assistants/{assistant_id}/chat/sms`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.assistants.sendSMS('assistant_id', { from: 'from', to: 'to' });

console.log(response.conversation_id);
```

## Clone Assistant

`POST /ai/assistants/{assistant_id}/clone`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.clone('assistant_id');

console.log(inferenceEmbedding.id);
```

## Import assistants from external provider

`POST /ai/assistants/import`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantsList = await client.ai.assistants.imports({
  api_key_ref: 'api_key_ref',
  provider: 'elevenlabs',
});

console.log(assistantsList.data);
```

## List scheduled events

`GET /ai/assistants/{assistant_id}/scheduled_events`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const scheduledEventListResponse of client.ai.assistants.scheduledEvents.list(
  'assistant_id',
)) {
  console.log(scheduledEventListResponse);
}
```

## Create a scheduled event

`POST /ai/assistants/{assistant_id}/scheduled_events`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const scheduledEventResponse = await client.ai.assistants.scheduledEvents.create('assistant_id', {
  scheduled_at_fixed_datetime: '2025-04-15T13:07:28.764Z',
  telnyx_agent_target: 'telnyx_agent_target',
  telnyx_conversation_channel: 'phone_call',
  telnyx_end_user_target: 'telnyx_end_user_target',
});

console.log(scheduledEventResponse);
```

## Get a scheduled event

`GET /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const scheduledEventResponse = await client.ai.assistants.scheduledEvents.retrieve('event_id', {
  assistant_id: 'assistant_id',
});

console.log(scheduledEventResponse);
```

## Delete a scheduled event

`DELETE /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.assistants.scheduledEvents.delete('event_id', { assistant_id: 'assistant_id' });
```

## List assistant tests with pagination

`GET /ai/assistants/tests`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const assistantTest of client.ai.assistants.tests.list()) {
  console.log(assistantTest.test_id);
}
```

## Create a new assistant test

`POST /ai/assistants/tests`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantTest = await client.ai.assistants.tests.create({
  destination: '+15551234567',
  instructions:
    'Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.',
  name: 'Customer Support Bot Test',
  rubric: [
    { criteria: 'Assistant responds within 30 seconds', name: 'Response Time' },
    { criteria: 'Provides correct product information', name: 'Accuracy' },
  ],
});

console.log(assistantTest.test_id);
```

## Get all test suite names

`GET /ai/assistants/tests/test-suites`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const testSuites = await client.ai.assistants.tests.testSuites.list();

console.log(testSuites.data);
```

## Get test suite run history

`GET /ai/assistants/tests/test-suites/{suite_name}/runs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const testRunResponse of client.ai.assistants.tests.testSuites.runs.list('suite_name')) {
  console.log(testRunResponse.run_id);
}
```

## Trigger test suite execution

`POST /ai/assistants/tests/test-suites/{suite_name}/runs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const testRunResponses = await client.ai.assistants.tests.testSuites.runs.trigger('suite_name');

console.log(testRunResponses);
```

## Get assistant test by ID

`GET /ai/assistants/tests/{test_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantTest = await client.ai.assistants.tests.retrieve('test_id');

console.log(assistantTest.test_id);
```

## Update an assistant test

`PUT /ai/assistants/tests/{test_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantTest = await client.ai.assistants.tests.update('test_id');

console.log(assistantTest.test_id);
```

## Delete an assistant test

`DELETE /ai/assistants/tests/{test_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.assistants.tests.delete('test_id');
```

## Get test run history for a specific test

`GET /ai/assistants/tests/{test_id}/runs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const testRunResponse of client.ai.assistants.tests.runs.list('test_id')) {
  console.log(testRunResponse.run_id);
}
```

## Trigger a manual test run

`POST /ai/assistants/tests/{test_id}/runs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const testRunResponse = await client.ai.assistants.tests.runs.trigger('test_id');

console.log(testRunResponse.run_id);
```

## Get specific test run details

`GET /ai/assistants/tests/{test_id}/runs/{run_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const testRunResponse = await client.ai.assistants.tests.runs.retrieve('run_id', {
  test_id: 'test_id',
});

console.log(testRunResponse.run_id);
```

## Get all versions of an assistant

`GET /ai/assistants/{assistant_id}/versions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const assistantsList = await client.ai.assistants.versions.list('assistant_id');

console.log(assistantsList.data);
```

## Get a specific assistant version

`GET /ai/assistants/{assistant_id}/versions/{version_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.versions.retrieve('version_id', {
  assistant_id: 'assistant_id',
});

console.log(inferenceEmbedding.id);
```

## Update a specific assistant version

`POST /ai/assistants/{assistant_id}/versions/{version_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.versions.update('version_id', {
  assistant_id: 'assistant_id',
});

console.log(inferenceEmbedding.id);
```

## Delete a specific assistant version

`DELETE /ai/assistants/{assistant_id}/versions/{version_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.assistants.versions.delete('version_id', { assistant_id: 'assistant_id' });
```

## Promote an assistant version to main

`POST /ai/assistants/{assistant_id}/versions/{version_id}/promote`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inferenceEmbedding = await client.ai.assistants.versions.promote('version_id', {
  assistant_id: 'assistant_id',
});

console.log(inferenceEmbedding.id);
```

## Get Canary Deploy

`GET /ai/assistants/{assistant_id}/canary-deploys`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const canaryDeployResponse = await client.ai.assistants.canaryDeploys.retrieve('assistant_id');

console.log(canaryDeployResponse.assistant_id);
```

## Create Canary Deploy

`POST /ai/assistants/{assistant_id}/canary-deploys`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const canaryDeployResponse = await client.ai.assistants.canaryDeploys.create('assistant_id', {
  versions: [{ percentage: 1, version_id: 'version_id' }],
});

console.log(canaryDeployResponse.assistant_id);
```

## Update Canary Deploy

`PUT /ai/assistants/{assistant_id}/canary-deploys`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const canaryDeployResponse = await client.ai.assistants.canaryDeploys.update('assistant_id', {
  versions: [{ percentage: 1, version_id: 'version_id' }],
});

console.log(canaryDeployResponse.assistant_id);
```

## Delete Canary Deploy

`DELETE /ai/assistants/{assistant_id}/canary-deploys`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.assistants.canaryDeploys.delete('assistant_id');
```

## Get assistant texml

`GET /ai/assistants/{assistant_id}/texml`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.assistants.getTexml('assistant_id');

console.log(response);
```

## Test Assistant Tool

`POST /ai/assistants/{assistant_id}/tools/{tool_id}/test`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.assistants.tools.test('tool_id', { assistant_id: 'assistant_id' });

console.log(response.data);
```

## List Integrations

`GET /ai/integrations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const integrations = await client.ai.integrations.list();

console.log(integrations.data);
```

## List User Integrations

`GET /ai/integrations/connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const connections = await client.ai.integrations.connections.list();

console.log(connections.data);
```

## Get User Integration connection By Id

`GET /ai/integrations/connections/{user_connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const connection = await client.ai.integrations.connections.retrieve('user_connection_id');

console.log(connection.data);
```

## Delete Integration Connection

`DELETE /ai/integrations/connections/{user_connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.integrations.connections.delete('user_connection_id');
```

## List Integration By Id

`GET /ai/integrations/{integration_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const integration = await client.ai.integrations.retrieve('integration_id');

console.log(integration.id);
```

## List MCP Servers

`GET /ai/mcp_servers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const mcpServerListResponse of client.ai.mcpServers.list()) {
  console.log(mcpServerListResponse.id);
}
```

## Create MCP Server

`POST /ai/mcp_servers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mcpServer = await client.ai.mcpServers.create({
  name: 'name',
  type: 'type',
  url: 'url',
});

console.log(mcpServer.id);
```

## Get MCP Server

`GET /ai/mcp_servers/{mcp_server_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mcpServer = await client.ai.mcpServers.retrieve('mcp_server_id');

console.log(mcpServer.id);
```

## Update MCP Server

`PUT /ai/mcp_servers/{mcp_server_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mcpServer = await client.ai.mcpServers.update('mcp_server_id');

console.log(mcpServer.id);
```

## Delete MCP Server

`DELETE /ai/mcp_servers/{mcp_server_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.mcpServers.delete('mcp_server_id');
```
