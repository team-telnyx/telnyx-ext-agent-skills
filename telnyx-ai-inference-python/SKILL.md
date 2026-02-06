---
name: telnyx-ai-inference-python
description: >-
  Access Telnyx LLM inference APIs, embeddings, and AI analytics for call
  insights and summaries. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: ai-inference
  language: python
---

# Telnyx Ai Inference - Python

## Installation

```bash
pip install telnyx
```

## List conversations

`GET /ai/conversations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conversations = client.ai.conversations.list()
print(conversations.data)
```

## Create a conversation

`POST /ai/conversations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conversation = client.ai.conversations.create()
print(conversation.id)
```

## Get Insight Template Groups

`GET /ai/conversations/insight-groups`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.conversations.insight_groups.retrieve_insight_groups()
page = page.data[0]
print(page.id)
```

## Create Insight Template Group

`POST /ai/conversations/insight-groups`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_group_detail = client.ai.conversations.insight_groups.insight_groups(
    name="name",
)
print(insight_template_group_detail.data)
```

## Get Insight Template Group

`GET /ai/conversations/insight-groups/{group_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_group_detail = client.ai.conversations.insight_groups.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(insight_template_group_detail.data)
```

## Update Insight Template Group

`PUT /ai/conversations/insight-groups/{group_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_group_detail = client.ai.conversations.insight_groups.update(
    group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(insight_template_group_detail.data)
```

## Delete Insight Template Group

`DELETE /ai/conversations/insight-groups/{group_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.insight_groups.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Assign Insight Template To Group

`POST /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/assign`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.insight_groups.insights.assign(
    insight_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Unassign Insight Template From Group

`DELETE /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/unassign`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.insight_groups.insights.delete_unassign(
    insight_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Get Insight Templates

`GET /ai/conversations/insights`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.conversations.insights.list()
page = page.data[0]
print(page.id)
```

## Create Insight Template

`POST /ai/conversations/insights`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_detail = client.ai.conversations.insights.create(
    instructions="instructions",
    name="name",
)
print(insight_template_detail.data)
```

## Get Insight Template

`GET /ai/conversations/insights/{insight_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_detail = client.ai.conversations.insights.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(insight_template_detail.data)
```

## Update Insight Template

`PUT /ai/conversations/insights/{insight_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
insight_template_detail = client.ai.conversations.insights.update(
    insight_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(insight_template_detail.data)
```

## Delete Insight Template

`DELETE /ai/conversations/insights/{insight_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.insights.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Get a conversation

`GET /ai/conversations/{conversation_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conversation = client.ai.conversations.retrieve(
    "conversation_id",
)
print(conversation.data)
```

## Update conversation metadata

`PUT /ai/conversations/{conversation_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conversation = client.ai.conversations.update(
    conversation_id="conversation_id",
)
print(conversation.data)
```

## Delete a conversation

`DELETE /ai/conversations/{conversation_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.delete(
    "conversation_id",
)
```

## Get insights for a conversation

`GET /ai/conversations/{conversation_id}/conversations-insights`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.conversations.retrieve_conversations_insights(
    "conversation_id",
)
print(response.data)
```

## Create Message

`POST /ai/conversations/{conversation_id}/message`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.conversations.add_message(
    conversation_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    role="role",
)
```

## Get conversation messages

`GET /ai/conversations/{conversation_id}/messages`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
messages = client.ai.conversations.messages.list(
    "conversation_id",
)
print(messages.data)
```

## Get Tasks by Status

`GET /ai/embeddings`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
embeddings = client.ai.embeddings.list()
print(embeddings.data)
```

## Embed documents

`POST /ai/embeddings`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
embedding_response = client.ai.embeddings.create(
    bucket_name="bucket_name",
)
print(embedding_response.data)
```

## List embedded buckets

`GET /ai/embeddings/buckets`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
buckets = client.ai.embeddings.buckets.list()
print(buckets.data)
```

## Get file-level embedding statuses for a bucket

`GET /ai/embeddings/buckets/{bucket_name}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
bucket = client.ai.embeddings.buckets.retrieve(
    "bucket_name",
)
print(bucket.data)
```

## Disable AI for an Embedded Bucket

`DELETE /ai/embeddings/buckets/{bucket_name}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.embeddings.buckets.delete(
    "bucket_name",
)
```

## Search for documents

`POST /ai/embeddings/similarity-search`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.embeddings.similarity_search(
    bucket_name="bucket_name",
    query="query",
)
print(response.data)
```

## Embed URL content

`POST /ai/embeddings/url`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
embedding_response = client.ai.embeddings.url(
    bucket_name="bucket_name",
    url="url",
)
print(embedding_response.data)
```

## Get an embedding task's status

`GET /ai/embeddings/{task_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
embedding = client.ai.embeddings.retrieve(
    "task_id",
)
print(embedding.data)
```

## List all clusters

`GET /ai/clusters`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ai.clusters.list()
page = page.data[0]
print(page.task_id)
```

## Compute new clusters

`POST /ai/clusters`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.clusters.compute(
    bucket="bucket",
)
print(response.data)
```

## Fetch a cluster

`GET /ai/clusters/{task_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
cluster = client.ai.clusters.retrieve(
    task_id="task_id",
)
print(cluster.data)
```

## Delete a cluster

`DELETE /ai/clusters/{task_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.ai.clusters.delete(
    "task_id",
)
```

## Fetch a cluster visualization

`GET /ai/clusters/{task_id}/graph`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.clusters.fetch_graph(
    task_id="task_id",
)
print(response)
content = response.read()
print(content)
```

## Transcribe speech to text

`POST /ai/audio/transcriptions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.audio.transcribe(
    model="distil-whisper/distil-large-v2",
)
print(response.text)
```

## Create a chat completion

`POST /ai/chat/completions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.chat.create_completion(
    messages=[{
        "role": "system",
        "content": "You are a friendly chatbot.",
    }, {
        "role": "user",
        "content": "Hello, world!",
    }],
)
print(response)
```

## List fine tuning jobs

`GET /ai/fine_tuning/jobs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
jobs = client.ai.fine_tuning.jobs.list()
print(jobs.data)
```

## Create a fine tuning job

`POST /ai/fine_tuning/jobs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fine_tuning_job = client.ai.fine_tuning.jobs.create(
    model="model",
    training_file="training_file",
)
print(fine_tuning_job.id)
```

## Get a fine tuning job

`GET /ai/fine_tuning/jobs/{job_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fine_tuning_job = client.ai.fine_tuning.jobs.retrieve(
    "job_id",
)
print(fine_tuning_job.id)
```

## Cancel a fine tuning job

`POST /ai/fine_tuning/jobs/{job_id}/cancel`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fine_tuning_job = client.ai.fine_tuning.jobs.cancel(
    "job_id",
)
print(fine_tuning_job.id)
```

## Get available models

`GET /ai/models`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.retrieve_models()
print(response.data)
```

## Summarize file content

`POST /ai/summarize`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.ai.summarize(
    bucket="bucket",
    filename="filename",
)
print(response.data)
```
