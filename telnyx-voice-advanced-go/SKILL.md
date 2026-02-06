---
name: telnyx-voice-advanced-go
description: >-
  Advanced call control features including DTMF sending, SIPREC recording, noise
  suppression, client state, and supervisor controls. This skill provides Go SDK
  examples.
metadata:
  author: telnyx
  product: voice-advanced
  language: go
---

# Telnyx Voice Advanced - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Update client state

`PUT /calls/{call_control_id}/actions/client_state_update`

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
  response, err := client.Calls.Actions.UpdateClientState(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionUpdateClientStateParams{
      ClientState: "aGF2ZSBhIG5pY2UgZGF5ID1d",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Send DTMF

`POST /calls/{call_control_id}/actions/send_dtmf`

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
  response, err := client.Calls.Actions.SendDtmf(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionSendDtmfParams{
      Digits: "1www2WABCDw9",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## SIPREC start

`POST /calls/{call_control_id}/actions/siprec_start`

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
  response, err := client.Calls.Actions.StartSiprec(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartSiprecParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## SIPREC stop

`POST /calls/{call_control_id}/actions/siprec_stop`

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
  response, err := client.Calls.Actions.StopSiprec(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopSiprecParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Noise Suppression Start (BETA)

`POST /calls/{call_control_id}/actions/suppression_start`

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
  response, err := client.Calls.Actions.StartNoiseSuppression(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStartNoiseSuppressionParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Noise Suppression Stop (BETA)

`POST /calls/{call_control_id}/actions/suppression_stop`

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
  response, err := client.Calls.Actions.StopNoiseSuppression(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionStopNoiseSuppressionParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Switch supervisor role

`POST /calls/{call_control_id}/actions/switch_supervisor_role`

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
  response, err := client.Calls.Actions.SwitchSupervisorRole(
    context.TODO(),
    "call_control_id",
    telnyx.CallActionSwitchSupervisorRoleParams{
      Role: telnyx.CallActionSwitchSupervisorRoleParamsRoleBarge,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
