---
name: telnyx-voice-go
description: >-
  Make and receive calls, transfer, bridge, and manage call lifecycle with Call
  Control. Includes application management and call events. This skill provides
  Go SDK examples.
metadata:
  author: telnyx
  product: voice
  language: go
---

# Telnyx Voice - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Answer call

`POST /calls/{call_control_id}/actions/answer`

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
  response, err := client.Calls.Actions.Answer(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionAnswerParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Bridge calls

`POST /calls/{call_control_id}/actions/bridge`

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
  response, err := client.Calls.Actions.Bridge(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionBridgeParams{
      CallControlIDToBridgeWith: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Dial

`POST /calls`

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
  response, err := client.Calls.Dial(context.TODO(), telnyx.CallDialParams{
    ConnectionID: "7267xxxxxxxxxxxxxx",
    From: "+18005550101",
    To: telnyx.CallDialParamsToUnion{
      OfString: telnyx.String("+18005550100 or sip:username@sip.telnyx.com"),
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Hangup call

`POST /calls/{call_control_id}/actions/hangup`

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
  response, err := client.Calls.Actions.Hangup(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionHangupParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Transfer call

`POST /calls/{call_control_id}/actions/transfer`

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
  response, err := client.Calls.Actions.Transfer(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionTransferParams{
      To: "+18005550100 or sip:username@sip.telnyx.com",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all active calls for given connection

`GET /connections/{connection_id}/active_calls`

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
  page, err := client.Connections.ListActiveCalls(
    context.TODO(),
    "1293384261075731461",
    telnyx.ConnectionListActiveCallsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List call control applications

`GET /call_control_applications`

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
  page, err := client.CallControlApplications.List(context.TODO(), telnyx.CallControlApplicationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a call control application

`POST /call_control_applications`

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
  callControlApplication, err := client.CallControlApplications.New(context.TODO(), telnyx.CallControlApplicationNewParams{
    ApplicationName: "call-router",
    WebhookEventURL: "https://example.com",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", callControlApplication.Data)
}
```

## Retrieve a call control application

`GET /call_control_applications/{id}`

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
  callControlApplication, err := client.CallControlApplications.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", callControlApplication.Data)
}
```

## Update a call control application

`PATCH /call_control_applications/{id}`

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
  callControlApplication, err := client.CallControlApplications.Update(
    context.TODO(),
    "id",
    telnyx.CallControlApplicationUpdateParams{
      ApplicationName: "call-router",
      WebhookEventURL: "https://example.com",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", callControlApplication.Data)
}
```

## Delete a call control application

`DELETE /call_control_applications/{id}`

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
  callControlApplication, err := client.CallControlApplications.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", callControlApplication.Data)
}
```

## List call events

`GET /call_events`

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
  page, err := client.CallEvents.List(context.TODO(), telnyx.CallEventListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```
