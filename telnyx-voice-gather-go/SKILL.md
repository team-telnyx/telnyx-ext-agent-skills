---
name: telnyx-voice-gather-go
description: >-
  Collect DTMF input and speech from callers using standard gather or AI-powered
  gather. Build interactive voice menus and AI voice assistants. This skill
  provides Go SDK examples.
metadata:
  author: telnyx
  product: voice-gather
  language: go
---

# Telnyx Voice Gather - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Add messages to AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_add_messages`

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
  response, err := client.Calls.Actions.AddAIAssistantMessages(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionAddAIAssistantMessagesParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Start AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_start`

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
  response, err := client.Calls.Actions.StartAIAssistant(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartAIAssistantParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Stop AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_stop`

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
  response, err := client.Calls.Actions.StopAIAssistant(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopAIAssistantParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Gather stop

`POST /calls/{call_control_id}/actions/gather_stop`

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
  response, err := client.Calls.Actions.StopGather(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopGatherParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Gather using AI

`POST /calls/{call_control_id}/actions/gather_using_ai`

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
  response, err := client.Calls.Actions.GatherUsingAI(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionGatherUsingAIParams{
      Parameters: map[string]any{
      "properties": "bar",
      "required": "bar",
      "type": "bar",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Gather using audio

`POST /calls/{call_control_id}/actions/gather_using_audio`

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
  response, err := client.Calls.Actions.GatherUsingAudio(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionGatherUsingAudioParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Gather using speak

`POST /calls/{call_control_id}/actions/gather_using_speak`

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
  response, err := client.Calls.Actions.GatherUsingSpeak(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionGatherUsingSpeakParams{
      Payload: "say this on call",
      Voice: "male",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Gather

`POST /calls/{call_control_id}/actions/gather`

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
  response, err := client.Calls.Actions.Gather(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionGatherParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
