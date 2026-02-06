---
name: telnyx-ai-inference-javascript
description: >-
  Access Telnyx LLM inference APIs, embeddings, and AI analytics for call
  insights and summaries. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: ai-inference
  language: javascript
---

# Telnyx Ai Inference - JavaScript

## Installation

```bash
npm install telnyx
```

## List conversations

`GET /ai/conversations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conversations = await client.ai.conversations.list();

console.log(conversations.data);
```

## Create a conversation

`POST /ai/conversations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conversation = await client.ai.conversations.create();

console.log(conversation.id);
```

## Get Insight Template Groups

`GET /ai/conversations/insight-groups`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const insightTemplateGroup of client.ai.conversations.insightGroups.retrieveInsightGroups()) {
  console.log(insightTemplateGroup.id);
}
```

## Create Insight Template Group

`POST /ai/conversations/insight-groups`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateGroupDetail = await client.ai.conversations.insightGroups.insightGroups({
  name: 'name',
});

console.log(insightTemplateGroupDetail.data);
```

## Get Insight Template Group

`GET /ai/conversations/insight-groups/{group_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateGroupDetail = await client.ai.conversations.insightGroups.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(insightTemplateGroupDetail.data);
```

## Update Insight Template Group

`PUT /ai/conversations/insight-groups/{group_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateGroupDetail = await client.ai.conversations.insightGroups.update(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(insightTemplateGroupDetail.data);
```

## Delete Insight Template Group

`DELETE /ai/conversations/insight-groups/{group_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.insightGroups.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Assign Insight Template To Group

`POST /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/assign`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.insightGroups.insights.assign(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { group_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);
```

## Unassign Insight Template From Group

`DELETE /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/unassign`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.insightGroups.insights.deleteUnassign(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { group_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);
```

## Get Insight Templates

`GET /ai/conversations/insights`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const insightTemplate of client.ai.conversations.insights.list()) {
  console.log(insightTemplate.id);
}
```

## Create Insight Template

`POST /ai/conversations/insights`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateDetail = await client.ai.conversations.insights.create({
  instructions: 'instructions',
  name: 'name',
});

console.log(insightTemplateDetail.data);
```

## Get Insight Template

`GET /ai/conversations/insights/{insight_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateDetail = await client.ai.conversations.insights.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(insightTemplateDetail.data);
```

## Update Insight Template

`PUT /ai/conversations/insights/{insight_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const insightTemplateDetail = await client.ai.conversations.insights.update(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(insightTemplateDetail.data);
```

## Delete Insight Template

`DELETE /ai/conversations/insights/{insight_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.insights.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Get a conversation

`GET /ai/conversations/{conversation_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conversation = await client.ai.conversations.retrieve('conversation_id');

console.log(conversation.data);
```

## Update conversation metadata

`PUT /ai/conversations/{conversation_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conversation = await client.ai.conversations.update('conversation_id');

console.log(conversation.data);
```

## Delete a conversation

`DELETE /ai/conversations/{conversation_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.delete('conversation_id');
```

## Get insights for a conversation

`GET /ai/conversations/{conversation_id}/conversations-insights`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.conversations.retrieveConversationsInsights('conversation_id');

console.log(response.data);
```

## Create Message

`POST /ai/conversations/{conversation_id}/message`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.conversations.addMessage('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e', { role: 'role' });
```

## Get conversation messages

`GET /ai/conversations/{conversation_id}/messages`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messages = await client.ai.conversations.messages.list('conversation_id');

console.log(messages.data);
```

## Get Tasks by Status

`GET /ai/embeddings`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const embeddings = await client.ai.embeddings.list();

console.log(embeddings.data);
```

## Embed documents

`POST /ai/embeddings`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const embeddingResponse = await client.ai.embeddings.create({ bucket_name: 'bucket_name' });

console.log(embeddingResponse.data);
```

## List embedded buckets

`GET /ai/embeddings/buckets`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const buckets = await client.ai.embeddings.buckets.list();

console.log(buckets.data);
```

## Get file-level embedding statuses for a bucket

`GET /ai/embeddings/buckets/{bucket_name}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const bucket = await client.ai.embeddings.buckets.retrieve('bucket_name');

console.log(bucket.data);
```

## Disable AI for an Embedded Bucket

`DELETE /ai/embeddings/buckets/{bucket_name}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.embeddings.buckets.delete('bucket_name');
```

## Search for documents

`POST /ai/embeddings/similarity-search`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.embeddings.similaritySearch({
  bucket_name: 'bucket_name',
  query: 'query',
});

console.log(response.data);
```

## Embed URL content

`POST /ai/embeddings/url`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const embeddingResponse = await client.ai.embeddings.url({
  bucket_name: 'bucket_name',
  url: 'url',
});

console.log(embeddingResponse.data);
```

## Get an embedding task's status

`GET /ai/embeddings/{task_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const embedding = await client.ai.embeddings.retrieve('task_id');

console.log(embedding.data);
```

## List all clusters

`GET /ai/clusters`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const clusterListResponse of client.ai.clusters.list()) {
  console.log(clusterListResponse.task_id);
}
```

## Compute new clusters

`POST /ai/clusters`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.clusters.compute({ bucket: 'bucket' });

console.log(response.data);
```

## Fetch a cluster

`GET /ai/clusters/{task_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const cluster = await client.ai.clusters.retrieve('task_id');

console.log(cluster.data);
```

## Delete a cluster

`DELETE /ai/clusters/{task_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.ai.clusters.delete('task_id');
```

## Fetch a cluster visualization

`GET /ai/clusters/{task_id}/graph`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.clusters.fetchGraph('task_id');

console.log(response);

const content = await response.blob();
console.log(content);
```

## Transcribe speech to text

`POST /ai/audio/transcriptions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.audio.transcribe({ model: 'distil-whisper/distil-large-v2' });

console.log(response.text);
```

## Create a chat completion

`POST /ai/chat/completions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.chat.createCompletion({
  messages: [
    { role: 'system', content: 'You are a friendly chatbot.' },
    { role: 'user', content: 'Hello, world!' },
  ],
});

console.log(response);
```

## List fine tuning jobs

`GET /ai/fine_tuning/jobs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const jobs = await client.ai.fineTuning.jobs.list();

console.log(jobs.data);
```

## Create a fine tuning job

`POST /ai/fine_tuning/jobs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fineTuningJob = await client.ai.fineTuning.jobs.create({
  model: 'model',
  training_file: 'training_file',
});

console.log(fineTuningJob.id);
```

## Get a fine tuning job

`GET /ai/fine_tuning/jobs/{job_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fineTuningJob = await client.ai.fineTuning.jobs.retrieve('job_id');

console.log(fineTuningJob.id);
```

## Cancel a fine tuning job

`POST /ai/fine_tuning/jobs/{job_id}/cancel`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fineTuningJob = await client.ai.fineTuning.jobs.cancel('job_id');

console.log(fineTuningJob.id);
```

## Get available models

`GET /ai/models`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.retrieveModels();

console.log(response.data);
```

## Summarize file content

`POST /ai/summarize`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.ai.summarize({ bucket: 'bucket', filename: 'filename' });

console.log(response.data);
```
