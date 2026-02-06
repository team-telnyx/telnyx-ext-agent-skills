---
name: telnyx-voice-conferencing-go
description: >-
  Create and manage conference calls, queues, and multi-party sessions. Use when
  building call centers or conferencing applications. This skill provides Go SDK
  examples.
metadata:
  author: telnyx
  product: voice-conferencing
  language: go
---

# Telnyx Voice Conferencing - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Enqueue call

`POST /calls/{call_control_id}/actions/enqueue`

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
  response, err := client.Calls.Actions.Enqueue(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionEnqueueParams{
      QueueName: "support",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Remove call from a queue

`POST /calls/{call_control_id}/actions/leave_queue`

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
  response, err := client.Calls.Actions.LeaveQueue(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionLeaveQueueParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List conferences

`GET /conferences`

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
  page, err := client.Conferences.List(context.TODO(), telnyx.ConferenceListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create conference

`POST /conferences`

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
  conference, err := client.Conferences.New(context.TODO(), telnyx.ConferenceNewParams{
    CallControlID: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
    Name: "Business",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conference.Data)
}
```

## Retrieve a conference

`GET /conferences/{id}`

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
  conference, err := client.Conferences.Get(
    context.TODO(),
    "id",
    telnyx.ConferenceGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", conference.Data)
}
```

## Hold conference participants

`POST /conferences/{id}/actions/hold`

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
  response, err := client.Conferences.Actions.Hold(
    context.TODO(),
    "id",
    telnyx.ConferenceActionHoldParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Join a conference

`POST /conferences/{id}/actions/join`

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
  response, err := client.Conferences.Actions.Join(
    context.TODO(),
    "id",
    telnyx.ConferenceActionJoinParams{
      CallControlID: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Leave a conference

`POST /conferences/{id}/actions/leave`

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
  response, err := client.Conferences.Actions.Leave(
    context.TODO(),
    "id",
    telnyx.ConferenceActionLeaveParams{
      CallControlID: "c46e06d7-b78f-4b13-96b6-c576af9640ff",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Mute conference participants

`POST /conferences/{id}/actions/mute`

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
  response, err := client.Conferences.Actions.Mute(
    context.TODO(),
    "id",
    telnyx.ConferenceActionMuteParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Play audio to conference participants

`POST /conferences/{id}/actions/play`

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
  response, err := client.Conferences.Actions.Play(
    context.TODO(),
    "id",
    telnyx.ConferenceActionPlayParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Conference recording pause

`POST /conferences/{id}/actions/record_pause`

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
  response, err := client.Conferences.Actions.RecordPause(
    context.TODO(),
    "id",
    telnyx.ConferenceActionRecordPauseParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Conference recording resume

`POST /conferences/{id}/actions/record_resume`

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
  response, err := client.Conferences.Actions.RecordResume(
    context.TODO(),
    "id",
    telnyx.ConferenceActionRecordResumeParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Conference recording start

`POST /conferences/{id}/actions/record_start`

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
  response, err := client.Conferences.Actions.RecordStart(
    context.TODO(),
    "id",
    telnyx.ConferenceActionRecordStartParams{
      Format: telnyx.ConferenceActionRecordStartParamsFormatWav,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Conference recording stop

`POST /conferences/{id}/actions/record_stop`

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
  response, err := client.Conferences.Actions.RecordStop(
    context.TODO(),
    "id",
    telnyx.ConferenceActionRecordStopParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Speak text to conference participants

`POST /conferences/{id}/actions/speak`

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
  response, err := client.Conferences.Actions.Speak(
    context.TODO(),
    "id",
    telnyx.ConferenceActionSpeakParams{
      Payload: "Say this to participants",
      Voice: "female",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Stop audio being played on the conference

`POST /conferences/{id}/actions/stop`

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
  response, err := client.Conferences.Actions.Stop(
    context.TODO(),
    "id",
    telnyx.ConferenceActionStopParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Unhold conference participants

`POST /conferences/{id}/actions/unhold`

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
  response, err := client.Conferences.Actions.Unhold(
    context.TODO(),
    "id",
    telnyx.ConferenceActionUnholdParams{
      CallControlIDs: []string{"v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"},
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Unmute conference participants

`POST /conferences/{id}/actions/unmute`

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
  response, err := client.Conferences.Actions.Unmute(
    context.TODO(),
    "id",
    telnyx.ConferenceActionUnmuteParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Update conference participant

`POST /conferences/{id}/actions/update`

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
  action, err := client.Conferences.Actions.Update(
    context.TODO(),
    "id",
    telnyx.ConferenceActionUpdateParams{
      UpdateConference: telnyx.UpdateConferenceParam{
        CallControlID: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
        SupervisorRole: telnyx.UpdateConferenceSupervisorRoleWhisper,
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", action.Data)
}
```

## List conference participants

`GET /conferences/{conference_id}/participants`

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
  page, err := client.Conferences.ListParticipants(
    context.TODO(),
    "conference_id",
    telnyx.ConferenceListParticipantsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```
