---
name: telnyx-voice-media-go
description: >-
  Play audio files, use text-to-speech, and record calls. Use when building IVR
  systems, playing announcements, or recording conversations. This skill
  provides Go SDK examples.
metadata:
  author: telnyx
  product: voice-media
  language: go
---

# Telnyx Voice Media - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Play audio URL

`POST /calls/{call_control_id}/actions/playback_start`

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
  response, err := client.Calls.Actions.StartPlayback(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartPlaybackParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Stop audio playback

`POST /calls/{call_control_id}/actions/playback_stop`

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
  response, err := client.Calls.Actions.StopPlayback(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopPlaybackParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Record pause

`POST /calls/{call_control_id}/actions/record_pause`

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
  response, err := client.Calls.Actions.PauseRecording(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionPauseRecordingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Record resume

`POST /calls/{call_control_id}/actions/record_resume`

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
  response, err := client.Calls.Actions.ResumeRecording(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionResumeRecordingParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Recording start

`POST /calls/{call_control_id}/actions/record_start`

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
  response, err := client.Calls.Actions.StartRecording(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartRecordingParams{
      Channels: telnyx.CallActionStartRecordingParamsChannelsSingle,
      Format: telnyx.CallActionStartRecordingParamsFormatWav,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Recording stop

`POST /calls/{call_control_id}/actions/record_stop`

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
  response, err := client.Calls.Actions.StopRecording(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopRecordingParams{
      StopRecordingRequest: telnyx.StopRecordingRequestParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Speak text

`POST /calls/{call_control_id}/actions/speak`

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
  response, err := client.Calls.Actions.Speak(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionSpeakParams{
      Payload: "Say this on the call",
      Voice: "female",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
