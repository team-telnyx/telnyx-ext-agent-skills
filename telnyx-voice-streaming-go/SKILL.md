---
name: telnyx-voice-streaming-go
description: >-
  Stream call audio in real-time, fork media to external destinations, and
  transcribe speech live. Use for real-time analytics and AI integrations. This
  skill provides Go SDK examples.
metadata:
  author: telnyx
  product: voice-streaming
  language: go
---

# Telnyx Voice Streaming - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Forking start

`POST /calls/{call_control_id}/actions/fork_start`

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
  response, err := client.Calls.Actions.StartForking(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartForkingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Forking stop

`POST /calls/{call_control_id}/actions/fork_stop`

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
  response, err := client.Calls.Actions.StopForking(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopForkingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Streaming start

`POST /calls/{call_control_id}/actions/streaming_start`

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
  response, err := client.Calls.Actions.StartStreaming(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartStreamingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Streaming stop

`POST /calls/{call_control_id}/actions/streaming_stop`

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
  response, err := client.Calls.Actions.StopStreaming(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopStreamingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Transcription start

`POST /calls/{call_control_id}/actions/transcription_start`

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
  response, err := client.Calls.Actions.StartTranscription(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartTranscriptionParams{
      TranscriptionStartRequest: telnyx.TranscriptionStartRequestParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Transcription stop

`POST /calls/{call_control_id}/actions/transcription_stop`

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
  response, err := client.Calls.Actions.StopTranscription(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopTranscriptionParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
