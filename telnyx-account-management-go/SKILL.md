---
name: telnyx-account-management-go
description: >-
  Manage sub-accounts for reseller and enterprise scenarios. This skill provides
  Go SDK examples.
metadata:
  author: telnyx
  product: account-management
  language: go
---

# Telnyx Account Management - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Lists accounts managed by the current user.

`GET /managed_accounts`

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
  page, err := client.ManagedAccounts.List(context.TODO(), telnyx.ManagedAccountListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new managed account.

`POST /managed_accounts`

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
  managedAccount, err := client.ManagedAccounts.New(context.TODO(), telnyx.ManagedAccountNewParams{
    BusinessName: "Larry's Cat Food Inc",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", managedAccount.Data)
}
```

## Retrieve a managed account

`GET /managed_accounts/{id}`

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
  managedAccount, err := client.ManagedAccounts.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", managedAccount.Data)
}
```

## Update a managed account

`PATCH /managed_accounts/{id}`

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
  managedAccount, err := client.ManagedAccounts.Update(
    context.TODO(),
    "id",
    telnyx.ManagedAccountUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", managedAccount.Data)
}
```

## Disables a managed account

`POST /managed_accounts/{id}/actions/disable`

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
  response, err := client.ManagedAccounts.Actions.Disable(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Enables a managed account

`POST /managed_accounts/{id}/actions/enable`

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
  response, err := client.ManagedAccounts.Actions.Enable(
    context.TODO(),
    "id",
    telnyx.ManagedAccountActionEnableParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Update the amount of allocatable global outbound channels allocated to a specific managed account.

`PATCH /managed_accounts/{id}/update_global_channel_limit`

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
  response, err := client.ManagedAccounts.UpdateGlobalChannelLimit(
    context.TODO(),
    "id",
    telnyx.ManagedAccountUpdateGlobalChannelLimitParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Display information about allocatable global outbound channels for the current user.

`GET /managed_accounts/allocatable_global_outbound_channels`

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
  response, err := client.ManagedAccounts.GetAllocatableGlobalOutboundChannels(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
