---
name: telnyx-ai-inference-ruby
description: >-
  Access Telnyx LLM inference APIs, embeddings, and AI analytics for call
  insights and summaries. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: ai-inference
  language: ruby
---

# Telnyx Ai Inference - Ruby

## Installation

```bash
gem install telnyx
```

## List conversations

`GET /ai/conversations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conversations = telnyx.ai.conversations.list

puts(conversations)
```

## Create a conversation

`POST /ai/conversations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conversation = telnyx.ai.conversations.create

puts(conversation)
```

## Get Insight Template Groups

`GET /ai/conversations/insight-groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.conversations.insight_groups.retrieve_insight_groups

puts(page)
```

## Create Insight Template Group

`POST /ai/conversations/insight-groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_group_detail = telnyx.ai.conversations.insight_groups.insight_groups(name: "name")

puts(insight_template_group_detail)
```

## Get Insight Template Group

`GET /ai/conversations/insight-groups/{group_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_group_detail = telnyx.ai.conversations.insight_groups.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(insight_template_group_detail)
```

## Update Insight Template Group

`PUT /ai/conversations/insight-groups/{group_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_group_detail = telnyx.ai.conversations.insight_groups.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(insight_template_group_detail)
```

## Delete Insight Template Group

`DELETE /ai/conversations/insight-groups/{group_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.insight_groups.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Assign Insight Template To Group

`POST /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/assign`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.insight_groups.insights.assign(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(result)
```

## Unassign Insight Template From Group

`DELETE /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/unassign`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.insight_groups.insights.delete_unassign(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(result)
```

## Get Insight Templates

`GET /ai/conversations/insights`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.conversations.insights.list

puts(page)
```

## Create Insight Template

`POST /ai/conversations/insights`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_detail = telnyx.ai.conversations.insights.create(instructions: "instructions", name: "name")

puts(insight_template_detail)
```

## Get Insight Template

`GET /ai/conversations/insights/{insight_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_detail = telnyx.ai.conversations.insights.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(insight_template_detail)
```

## Update Insight Template

`PUT /ai/conversations/insights/{insight_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

insight_template_detail = telnyx.ai.conversations.insights.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(insight_template_detail)
```

## Delete Insight Template

`DELETE /ai/conversations/insights/{insight_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.insights.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Get a conversation

`GET /ai/conversations/{conversation_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conversation = telnyx.ai.conversations.retrieve("conversation_id")

puts(conversation)
```

## Update conversation metadata

`PUT /ai/conversations/{conversation_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conversation = telnyx.ai.conversations.update("conversation_id")

puts(conversation)
```

## Delete a conversation

`DELETE /ai/conversations/{conversation_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.delete("conversation_id")

puts(result)
```

## Get insights for a conversation

`GET /ai/conversations/{conversation_id}/conversations-insights`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.conversations.retrieve_conversations_insights("conversation_id")

puts(response)
```

## Create Message

`POST /ai/conversations/{conversation_id}/message`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.conversations.add_message("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", role: "role")

puts(result)
```

## Get conversation messages

`GET /ai/conversations/{conversation_id}/messages`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

messages = telnyx.ai.conversations.messages.list("conversation_id")

puts(messages)
```

## Get Tasks by Status

`GET /ai/embeddings`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

embeddings = telnyx.ai.embeddings.list

puts(embeddings)
```

## Embed documents

`POST /ai/embeddings`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

embedding_response = telnyx.ai.embeddings.create(bucket_name: "bucket_name")

puts(embedding_response)
```

## List embedded buckets

`GET /ai/embeddings/buckets`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

buckets = telnyx.ai.embeddings.buckets.list

puts(buckets)
```

## Get file-level embedding statuses for a bucket

`GET /ai/embeddings/buckets/{bucket_name}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

bucket = telnyx.ai.embeddings.buckets.retrieve("bucket_name")

puts(bucket)
```

## Disable AI for an Embedded Bucket

`DELETE /ai/embeddings/buckets/{bucket_name}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.embeddings.buckets.delete("bucket_name")

puts(result)
```

## Search for documents

`POST /ai/embeddings/similarity-search`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.embeddings.similarity_search(bucket_name: "bucket_name", query: "query")

puts(response)
```

## Embed URL content

`POST /ai/embeddings/url`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

embedding_response = telnyx.ai.embeddings.url(bucket_name: "bucket_name", url: "url")

puts(embedding_response)
```

## Get an embedding task's status

`GET /ai/embeddings/{task_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

embedding = telnyx.ai.embeddings.retrieve("task_id")

puts(embedding)
```

## List all clusters

`GET /ai/clusters`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ai.clusters.list

puts(page)
```

## Compute new clusters

`POST /ai/clusters`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.clusters.compute(bucket: "bucket")

puts(response)
```

## Fetch a cluster

`GET /ai/clusters/{task_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

cluster = telnyx.ai.clusters.retrieve("task_id")

puts(cluster)
```

## Delete a cluster

`DELETE /ai/clusters/{task_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.ai.clusters.delete("task_id")

puts(result)
```

## Fetch a cluster visualization

`GET /ai/clusters/{task_id}/graph`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.clusters.fetch_graph("task_id")

puts(response)
```

## Transcribe speech to text

`POST /ai/audio/transcriptions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.audio.transcribe(model: :"distil-whisper/distil-large-v2")

puts(response)
```

## Create a chat completion

`POST /ai/chat/completions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.chat.create_completion(
  messages: [{content: "You are a friendly chatbot.", role: :system}, {content: "Hello, world!", role: :user}]
)

puts(response)
```

## List fine tuning jobs

`GET /ai/fine_tuning/jobs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

jobs = telnyx.ai.fine_tuning.jobs.list

puts(jobs)
```

## Create a fine tuning job

`POST /ai/fine_tuning/jobs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fine_tuning_job = telnyx.ai.fine_tuning.jobs.create(model: "model", training_file: "training_file")

puts(fine_tuning_job)
```

## Get a fine tuning job

`GET /ai/fine_tuning/jobs/{job_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fine_tuning_job = telnyx.ai.fine_tuning.jobs.retrieve("job_id")

puts(fine_tuning_job)
```

## Cancel a fine tuning job

`POST /ai/fine_tuning/jobs/{job_id}/cancel`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fine_tuning_job = telnyx.ai.fine_tuning.jobs.cancel("job_id")

puts(fine_tuning_job)
```

## Get available models

`GET /ai/models`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.retrieve_models

puts(response)
```

## Summarize file content

`POST /ai/summarize`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.ai.summarize(bucket: "bucket", filename: "filename")

puts(response)
```
