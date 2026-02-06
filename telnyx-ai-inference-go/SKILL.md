---
name: telnyx-ai-inference-go
description: >-
  Access Telnyx LLM inference APIs, embeddings, and AI analytics for call
  insights and summaries. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: ai-inference
  language: go
---

# Telnyx Ai Inference - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List conversations

`GET /ai/conversations`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conversations, err := client.AI.Conversations.List(context.TODO(), telnyx.AIConversationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conversations.Data)
}
```

## Create a conversation

`POST /ai/conversations`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conversation, err := client.AI.Conversations.New(context.TODO(), telnyx.AIConversationNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conversation.ID)
}
```

## Get Insight Template Groups

`GET /ai/conversations/insight-groups`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.AI.Conversations.InsightGroups.GetInsightGroups(context.TODO(), telnyx.AIConversationInsightGroupGetInsightGroupsParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create Insight Template Group

`POST /ai/conversations/insight-groups`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateGroupDetail, err := client.AI.Conversations.InsightGroups.InsightGroups(context.TODO(), telnyx.AIConversationInsightGroupInsightGroupsParams{
    Name: "name",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateGroupDetail.Data)
}
```

## Get Insight Template Group

`GET /ai/conversations/insight-groups/{group_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateGroupDetail, err := client.AI.Conversations.InsightGroups.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateGroupDetail.Data)
}
```

## Update Insight Template Group

`PUT /ai/conversations/insight-groups/{group_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateGroupDetail, err := client.AI.Conversations.InsightGroups.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AIConversationInsightGroupUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateGroupDetail.Data)
}
```

## Delete Insight Template Group

`DELETE /ai/conversations/insight-groups/{group_id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.InsightGroups.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Assign Insight Template To Group

`POST /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/assign`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.InsightGroups.Insights.Assign(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AIConversationInsightGroupInsightAssignParams{
      GroupID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Unassign Insight Template From Group

`DELETE /ai/conversations/insight-groups/{group_id}/insights/{insight_id}/unassign`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.InsightGroups.Insights.DeleteUnassign(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AIConversationInsightGroupInsightDeleteUnassignParams{
      GroupID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Get Insight Templates

`GET /ai/conversations/insights`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.AI.Conversations.Insights.List(context.TODO(), telnyx.AIConversationInsightListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create Insight Template

`POST /ai/conversations/insights`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateDetail, err := client.AI.Conversations.Insights.New(context.TODO(), telnyx.AIConversationInsightNewParams{
    Instructions: "instructions",
    Name: "name",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateDetail.Data)
}
```

## Get Insight Template

`GET /ai/conversations/insights/{insight_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateDetail, err := client.AI.Conversations.Insights.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateDetail.Data)
}
```

## Update Insight Template

`PUT /ai/conversations/insights/{insight_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  insightTemplateDetail, err := client.AI.Conversations.Insights.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AIConversationInsightUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", insightTemplateDetail.Data)
}
```

## Delete Insight Template

`DELETE /ai/conversations/insights/{insight_id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.Insights.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get a conversation

`GET /ai/conversations/{conversation_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conversation, err := client.AI.Conversations.Get(context.TODO(), "conversation_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conversation.Data)
}
```

## Update conversation metadata

`PUT /ai/conversations/{conversation_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  conversation, err := client.AI.Conversations.Update(
    context.TODO(),
    "conversation_id",
    telnyx.AIConversationUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conversation.Data)
}
```

## Delete a conversation

`DELETE /ai/conversations/{conversation_id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.Delete(context.TODO(), "conversation_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get insights for a conversation

`GET /ai/conversations/{conversation_id}/conversations-insights`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Conversations.GetConversationsInsights(context.TODO(), "conversation_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Create Message

`POST /ai/conversations/{conversation_id}/message`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Conversations.AddMessage(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AIConversationAddMessageParams{
      Role: "role",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Get conversation messages

`GET /ai/conversations/{conversation_id}/messages`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  messages, err := client.AI.Conversations.Messages.List(context.TODO(), "conversation_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messages.Data)
}
```

## Get Tasks by Status

`GET /ai/embeddings`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  embeddings, err := client.AI.Embeddings.List(context.TODO(), telnyx.AIEmbeddingListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", embeddings.Data)
}
```

## Embed documents

`POST /ai/embeddings`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  embeddingResponse, err := client.AI.Embeddings.New(context.TODO(), telnyx.AIEmbeddingNewParams{
    BucketName: "bucket_name",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", embeddingResponse.Data)
}
```

## List embedded buckets

`GET /ai/embeddings/buckets`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  buckets, err := client.AI.Embeddings.Buckets.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", buckets.Data)
}
```

## Get file-level embedding statuses for a bucket

`GET /ai/embeddings/buckets/{bucket_name}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  bucket, err := client.AI.Embeddings.Buckets.Get(context.TODO(), "bucket_name")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", bucket.Data)
}
```

## Disable AI for an Embedded Bucket

`DELETE /ai/embeddings/buckets/{bucket_name}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Embeddings.Buckets.Delete(context.TODO(), "bucket_name")
  if err != nil {
    panic(err.Error())
  }
}
```

## Search for documents

`POST /ai/embeddings/similarity-search`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Embeddings.SimilaritySearch(context.TODO(), telnyx.AIEmbeddingSimilaritySearchParams{
    BucketName: "bucket_name",
    Query: "query",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Embed URL content

`POST /ai/embeddings/url`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  embeddingResponse, err := client.AI.Embeddings.URL(context.TODO(), telnyx.AIEmbeddingURLParams{
    BucketName: "bucket_name",
    URL: "url",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", embeddingResponse.Data)
}
```

## Get an embedding task's status

`GET /ai/embeddings/{task_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  embedding, err := client.AI.Embeddings.Get(context.TODO(), "task_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", embedding.Data)
}
```

## List all clusters

`GET /ai/clusters`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.AI.Clusters.List(context.TODO(), telnyx.AIClusterListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Compute new clusters

`POST /ai/clusters`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Clusters.Compute(context.TODO(), telnyx.AIClusterComputeParams{
    Bucket: "bucket",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Fetch a cluster

`GET /ai/clusters/{task_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  cluster, err := client.AI.Clusters.Get(
    context.TODO(),
    "task_id",
    telnyx.AIClusterGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", cluster.Data)
}
```

## Delete a cluster

`DELETE /ai/clusters/{task_id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.AI.Clusters.Delete(context.TODO(), "task_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Fetch a cluster visualization

`GET /ai/clusters/{task_id}/graph`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Clusters.FetchGraph(
    context.TODO(),
    "task_id",
    telnyx.AIClusterFetchGraphParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Transcribe speech to text

`POST /ai/audio/transcriptions`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Audio.Transcribe(context.TODO(), telnyx.AIAudioTranscribeParams{
    Model: telnyx.AIAudioTranscribeParamsModelDistilWhisperDistilLargeV2,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Text)
}
```

## Create a chat completion

`POST /ai/chat/completions`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Chat.NewCompletion(context.TODO(), telnyx.AIChatNewCompletionParams{
    Messages: []telnyx.AIChatNewCompletionParamsMessage{telnyx.AIChatNewCompletionParamsMessage{
      Role: "system",
      Content: telnyx.AIChatNewCompletionParamsMessageContentUnion{
        OfString: telnyx.String("You are a friendly chatbot."),
      },
    }, telnyx.AIChatNewCompletionParamsMessage{
      Role: "user",
      Content: telnyx.AIChatNewCompletionParamsMessageContentUnion{
        OfString: telnyx.String("Hello, world!"),
      },
    }},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List fine tuning jobs

`GET /ai/fine_tuning/jobs`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  jobs, err := client.AI.FineTuning.Jobs.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", jobs.Data)
}
```

## Create a fine tuning job

`POST /ai/fine_tuning/jobs`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  fineTuningJob, err := client.AI.FineTuning.Jobs.New(context.TODO(), telnyx.AIFineTuningJobNewParams{
    Model: "model",
    TrainingFile: "training_file",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fineTuningJob.ID)
}
```

## Get a fine tuning job

`GET /ai/fine_tuning/jobs/{job_id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  fineTuningJob, err := client.AI.FineTuning.Jobs.Get(context.TODO(), "job_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fineTuningJob.ID)
}
```

## Cancel a fine tuning job

`POST /ai/fine_tuning/jobs/{job_id}/cancel`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  fineTuningJob, err := client.AI.FineTuning.Jobs.Cancel(context.TODO(), "job_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fineTuningJob.ID)
}
```

## Get available models

`GET /ai/models`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.GetModels(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Summarize file content

`POST /ai/summarize`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.AI.Summarize(context.TODO(), telnyx.AISummarizeParams{
    Bucket: "bucket",
    Filename: "filename",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
