---
name: telnyx-ai-assistants-go
description: >-
  Create and manage AI voice assistants with custom personalities, knowledge
  bases, and tool integrations. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: ai-assistants
  language: go
---

# Telnyx Ai Assistants - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List assistants

`GET /ai/assistants`

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
  assistantsList, err := client.AI.Assistants.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantsList.Data)
}
```

## Create an assistant

`POST /ai/assistants`

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
  inferenceEmbedding, err := client.AI.Assistants.New(context.TODO(), telnyx.AIAssistantNewParams{
    Instructions: "instructions",
    Model: "model",
    Name: "name",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Get an assistant

`GET /ai/assistants/{assistant_id}`

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
  inferenceEmbedding, err := client.AI.Assistants.Get(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Update an assistant

`POST /ai/assistants/{assistant_id}`

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
  inferenceEmbedding, err := client.AI.Assistants.Update(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Delete an assistant

`DELETE /ai/assistants/{assistant_id}`

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
  assistant, err := client.AI.Assistants.Delete(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistant.ID)
}
```

## Assistant Chat (BETA)

`POST /ai/assistants/{assistant_id}/chat`

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
  response, err := client.AI.Assistants.Chat(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantChatParams{
      Content: "Tell me a joke about cats",
      ConversationID: "42b20469-1215-4a9a-8964-c36f66b406f4",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Content)
}
```

## Assistant Sms Chat

`POST /ai/assistants/{assistant_id}/chat/sms`

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
  response, err := client.AI.Assistants.SendSMS(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantSendSMSParams{
      From: "from",
      To: "to",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.ConversationID)
}
```

## Clone Assistant

`POST /ai/assistants/{assistant_id}/clone`

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
  inferenceEmbedding, err := client.AI.Assistants.Clone(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Import assistants from external provider

`POST /ai/assistants/import`

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
  assistantsList, err := client.AI.Assistants.Imports(context.TODO(), telnyx.AIAssistantImportsParams{
    APIKeyRef: "api_key_ref",
    Provider: telnyx.AIAssistantImportsParamsProviderElevenlabs,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantsList.Data)
}
```

## List scheduled events

`GET /ai/assistants/{assistant_id}/scheduled_events`

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
  page, err := client.AI.Assistants.ScheduledEvents.List(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantScheduledEventListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a scheduled event

`POST /ai/assistants/{assistant_id}/scheduled_events`

```go
package main

import (
  "context"
  "fmt"
  "time"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  scheduledEventResponse, err := client.AI.Assistants.ScheduledEvents.New(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantScheduledEventNewParams{
      ScheduledAtFixedDatetime: time.Now(),
      TelnyxAgentTarget: "telnyx_agent_target",
      TelnyxConversationChannel: telnyx.ConversationChannelTypePhoneCall,
      TelnyxEndUserTarget: "telnyx_end_user_target",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", scheduledEventResponse)
}
```

## Get a scheduled event

`GET /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

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
  scheduledEventResponse, err := client.AI.Assistants.ScheduledEvents.Get(
    context.TODO(),
    "event_id",
    telnyx.AIAssistantScheduledEventGetParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", scheduledEventResponse)
}
```

## Delete a scheduled event

`DELETE /ai/assistants/{assistant_id}/scheduled_events/{event_id}`

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
  err := client.AI.Assistants.ScheduledEvents.Delete(
    context.TODO(),
    "event_id",
    telnyx.AIAssistantScheduledEventDeleteParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## List assistant tests with pagination

`GET /ai/assistants/tests`

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
  page, err := client.AI.Assistants.Tests.List(context.TODO(), telnyx.AIAssistantTestListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new assistant test

`POST /ai/assistants/tests`

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
  assistantTest, err := client.AI.Assistants.Tests.New(context.TODO(), telnyx.AIAssistantTestNewParams{
    Destination: "+15551234567",
    Instructions: "Act as a frustrated customer who received a damaged product. Ask for a refund and escalate if not satisfied with the initial response.",
    Name: "Customer Support Bot Test",
    Rubric: []telnyx.AIAssistantTestNewParamsRubric{telnyx.AIAssistantTestNewParamsRubric{
      Criteria: "Assistant responds within 30 seconds",
      Name: "Response Time",
    }, telnyx.AIAssistantTestNewParamsRubric{
      Criteria: "Provides correct product information",
      Name: "Accuracy",
    }},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantTest.TestID)
}
```

## Get all test suite names

`GET /ai/assistants/tests/test-suites`

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
  testSuites, err := client.AI.Assistants.Tests.TestSuites.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", testSuites.Data)
}
```

## Get test suite run history

`GET /ai/assistants/tests/test-suites/{suite_name}/runs`

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
  page, err := client.AI.Assistants.Tests.TestSuites.Runs.List(
    context.TODO(),
    "suite_name",
    telnyx.AIAssistantTestTestSuiteRunListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Trigger test suite execution

`POST /ai/assistants/tests/test-suites/{suite_name}/runs`

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
  testRunResponses, err := client.AI.Assistants.Tests.TestSuites.Runs.Trigger(
    context.TODO(),
    "suite_name",
    telnyx.AIAssistantTestTestSuiteRunTriggerParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", testRunResponses)
}
```

## Get assistant test by ID

`GET /ai/assistants/tests/{test_id}`

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
  assistantTest, err := client.AI.Assistants.Tests.Get(context.TODO(), "test_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantTest.TestID)
}
```

## Update an assistant test

`PUT /ai/assistants/tests/{test_id}`

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
  assistantTest, err := client.AI.Assistants.Tests.Update(
    context.TODO(),
    "test_id",
    telnyx.AIAssistantTestUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantTest.TestID)
}
```

## Delete an assistant test

`DELETE /ai/assistants/tests/{test_id}`

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
  err := client.AI.Assistants.Tests.Delete(context.TODO(), "test_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get test run history for a specific test

`GET /ai/assistants/tests/{test_id}/runs`

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
  page, err := client.AI.Assistants.Tests.Runs.List(
    context.TODO(),
    "test_id",
    telnyx.AIAssistantTestRunListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Trigger a manual test run

`POST /ai/assistants/tests/{test_id}/runs`

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
  testRunResponse, err := client.AI.Assistants.Tests.Runs.Trigger(
    context.TODO(),
    "test_id",
    telnyx.AIAssistantTestRunTriggerParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", testRunResponse.RunID)
}
```

## Get specific test run details

`GET /ai/assistants/tests/{test_id}/runs/{run_id}`

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
  testRunResponse, err := client.AI.Assistants.Tests.Runs.Get(
    context.TODO(),
    "run_id",
    telnyx.AIAssistantTestRunGetParams{
      TestID: "test_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", testRunResponse.RunID)
}
```

## Get all versions of an assistant

`GET /ai/assistants/{assistant_id}/versions`

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
  assistantsList, err := client.AI.Assistants.Versions.List(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", assistantsList.Data)
}
```

## Get a specific assistant version

`GET /ai/assistants/{assistant_id}/versions/{version_id}`

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
  inferenceEmbedding, err := client.AI.Assistants.Versions.Get(
    context.TODO(),
    "version_id",
    telnyx.AIAssistantVersionGetParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Update a specific assistant version

`POST /ai/assistants/{assistant_id}/versions/{version_id}`

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
  inferenceEmbedding, err := client.AI.Assistants.Versions.Update(
    context.TODO(),
    "version_id",
    telnyx.AIAssistantVersionUpdateParams{
      AssistantID: "assistant_id",
      UpdateAssistant: telnyx.UpdateAssistantParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Delete a specific assistant version

`DELETE /ai/assistants/{assistant_id}/versions/{version_id}`

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
  err := client.AI.Assistants.Versions.Delete(
    context.TODO(),
    "version_id",
    telnyx.AIAssistantVersionDeleteParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Promote an assistant version to main

`POST /ai/assistants/{assistant_id}/versions/{version_id}/promote`

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
  inferenceEmbedding, err := client.AI.Assistants.Versions.Promote(
    context.TODO(),
    "version_id",
    telnyx.AIAssistantVersionPromoteParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inferenceEmbedding.ID)
}
```

## Get Canary Deploy

`GET /ai/assistants/{assistant_id}/canary-deploys`

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
  canaryDeployResponse, err := client.AI.Assistants.CanaryDeploys.Get(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", canaryDeployResponse.AssistantID)
}
```

## Create Canary Deploy

`POST /ai/assistants/{assistant_id}/canary-deploys`

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
  canaryDeployResponse, err := client.AI.Assistants.CanaryDeploys.New(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantCanaryDeployNewParams{
      CanaryDeploy: telnyx.CanaryDeployParam{
        Versions: []telnyx.VersionConfigParam{telnyx.VersionConfigParam{
          Percentage: 1,
          VersionID: "version_id",
        }},
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", canaryDeployResponse.AssistantID)
}
```

## Update Canary Deploy

`PUT /ai/assistants/{assistant_id}/canary-deploys`

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
  canaryDeployResponse, err := client.AI.Assistants.CanaryDeploys.Update(
    context.TODO(),
    "assistant_id",
    telnyx.AIAssistantCanaryDeployUpdateParams{
      CanaryDeploy: telnyx.CanaryDeployParam{
        Versions: []telnyx.VersionConfigParam{telnyx.VersionConfigParam{
          Percentage: 1,
          VersionID: "version_id",
        }},
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", canaryDeployResponse.AssistantID)
}
```

## Delete Canary Deploy

`DELETE /ai/assistants/{assistant_id}/canary-deploys`

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
  err := client.AI.Assistants.CanaryDeploys.Delete(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## Get assistant texml

`GET /ai/assistants/{assistant_id}/texml`

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
  response, err := client.AI.Assistants.GetTexml(context.TODO(), "assistant_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Test Assistant Tool

`POST /ai/assistants/{assistant_id}/tools/{tool_id}/test`

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
  response, err := client.AI.Assistants.Tools.Test(
    context.TODO(),
    "tool_id",
    telnyx.AIAssistantToolTestParams{
      AssistantID: "assistant_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List Integrations

`GET /ai/integrations`

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
  integrations, err := client.AI.Integrations.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", integrations.Data)
}
```

## List User Integrations

`GET /ai/integrations/connections`

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
  connections, err := client.AI.Integrations.Connections.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", connections.Data)
}
```

## Get User Integration connection By Id

`GET /ai/integrations/connections/{user_connection_id}`

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
  connection, err := client.AI.Integrations.Connections.Get(context.TODO(), "user_connection_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", connection.Data)
}
```

## Delete Integration Connection

`DELETE /ai/integrations/connections/{user_connection_id}`

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
  err := client.AI.Integrations.Connections.Delete(context.TODO(), "user_connection_id")
  if err != nil {
    panic(err.Error())
  }
}
```

## List Integration By Id

`GET /ai/integrations/{integration_id}`

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
  integration, err := client.AI.Integrations.Get(context.TODO(), "integration_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", integration.ID)
}
```

## List MCP Servers

`GET /ai/mcp_servers`

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
  page, err := client.AI.McpServers.List(context.TODO(), telnyx.AIMcpServerListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create MCP Server

`POST /ai/mcp_servers`

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
  mcpServer, err := client.AI.McpServers.New(context.TODO(), telnyx.AIMcpServerNewParams{
    Name: "name",
    Type: "type",
    URL: "url",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mcpServer.ID)
}
```

## Get MCP Server

`GET /ai/mcp_servers/{mcp_server_id}`

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
  mcpServer, err := client.AI.McpServers.Get(context.TODO(), "mcp_server_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mcpServer.ID)
}
```

## Update MCP Server

`PUT /ai/mcp_servers/{mcp_server_id}`

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
  mcpServer, err := client.AI.McpServers.Update(
    context.TODO(),
    "mcp_server_id",
    telnyx.AIMcpServerUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mcpServer.ID)
}
```

## Delete MCP Server

`DELETE /ai/mcp_servers/{mcp_server_id}`

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
  err := client.AI.McpServers.Delete(context.TODO(), "mcp_server_id")
  if err != nil {
    panic(err.Error())
  }
}
```
