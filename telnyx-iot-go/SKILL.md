---
name: telnyx-iot-go
description: >-
  Manage IoT SIM cards, eSIMs, data plans, and wireless connectivity. Use when
  building IoT/M2M solutions. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: iot
  language: go
---

# Telnyx Iot - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Get all wireless regions

`GET /wireless/regions`

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
  response, err := client.Wireless.GetRegions(context.TODO(), telnyx.WirelessGetRegionsParams{
    Product: "public_ips",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get all SIM cards

`GET /sim_cards`

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
  page, err := client.SimCards.List(context.TODO(), telnyx.SimCardListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get SIM card

`GET /sim_cards/{id}`

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
  simCard, err := client.SimCards.Get(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCard.Data)
}
```

## Update a SIM card

`PATCH /sim_cards/{id}`

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
  simCard, err := client.SimCards.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardUpdateParams{
      SimCard: telnyx.SimCardParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCard.Data)
}
```

## Deletes a SIM card

`DELETE /sim_cards/{id}`

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
  simCard, err := client.SimCards.Delete(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardDeleteParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCard.Data)
}
```

## Get activation code for an eSIM

`GET /sim_cards/{id}/activation_code`

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
  response, err := client.SimCards.GetActivationCode(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get SIM card device details

`GET /sim_cards/{id}/device_details`

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
  response, err := client.SimCards.GetDeviceDetails(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get SIM card public IP definition

`GET /sim_cards/{id}/public_ip`

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
  response, err := client.SimCards.GetPublicIP(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List wireless connectivity logs

`GET /sim_cards/{id}/wireless_connectivity_logs`

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
  page, err := client.SimCards.ListWirelessConnectivityLogs(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardListWirelessConnectivityLogsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Request a SIM card disable

`POST /sim_cards/{id}/actions/disable`

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
  response, err := client.SimCards.Actions.Disable(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request a SIM card enable

`POST /sim_cards/{id}/actions/enable`

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
  response, err := client.SimCards.Actions.Enable(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request removing a SIM card public IP

`POST /sim_cards/{id}/actions/remove_public_ip`

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
  response, err := client.SimCards.Actions.RemovePublicIP(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request setting a SIM card public IP

`POST /sim_cards/{id}/actions/set_public_ip`

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
  response, err := client.SimCards.Actions.SetPublicIP(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardActionSetPublicIPParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request setting a SIM card to standby

`POST /sim_cards/{id}/actions/set_standby`

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
  response, err := client.SimCards.Actions.SetStandby(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request bulk setting SIM card public IPs.

`POST /sim_cards/actions/bulk_set_public_ips`

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
  response, err := client.SimCards.Actions.BulkSetPublicIPs(context.TODO(), telnyx.SimCardActionBulkSetPublicIPsParams{
    SimCardIDs: []string{"6b14e151-8493-4fa1-8664-1cc4e6d14158"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Validate SIM cards registration codes

`POST /sim_cards/actions/validate_registration_codes`

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
  response, err := client.SimCards.Actions.ValidateRegistrationCodes(context.TODO(), telnyx.SimCardActionValidateRegistrationCodesParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List SIM card actions

`GET /sim_card_actions`

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
  page, err := client.SimCards.Actions.List(context.TODO(), telnyx.SimCardActionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get SIM card action details

`GET /sim_card_actions/{id}`

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
  action, err := client.SimCards.Actions.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", action.Data)
}
```

## List bulk SIM card actions

`GET /bulk_sim_card_actions`

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
  page, err := client.BulkSimCardActions.List(context.TODO(), telnyx.BulkSimCardActionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get bulk SIM card action details

`GET /bulk_sim_card_actions/{id}`

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
  bulkSimCardAction, err := client.BulkSimCardActions.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", bulkSimCardAction.Data)
}
```

## Get all SIM card groups

`GET /sim_card_groups`

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
  page, err := client.SimCardGroups.List(context.TODO(), telnyx.SimCardGroupListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a SIM card group

`POST /sim_card_groups`

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
  simCardGroup, err := client.SimCardGroups.New(context.TODO(), telnyx.SimCardGroupNewParams{
    Name: "My Test Group",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardGroup.Data)
}
```

## Get SIM card group

`GET /sim_card_groups/{id}`

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
  simCardGroup, err := client.SimCardGroups.Get(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardGroupGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardGroup.Data)
}
```

## Update a SIM card group

`PATCH /sim_card_groups/{id}`

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
  simCardGroup, err := client.SimCardGroups.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardGroupUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardGroup.Data)
}
```

## Delete a SIM card group

`DELETE /sim_card_groups/{id}`

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
  simCardGroup, err := client.SimCardGroups.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardGroup.Data)
}
```

## Request Private Wireless Gateway removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_private_wireless_gateway`

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
  response, err := client.SimCardGroups.Actions.RemovePrivateWirelessGateway(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request Wireless Blocklist removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_wireless_blocklist`

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
  response, err := client.SimCardGroups.Actions.RemoveWirelessBlocklist(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request Private Wireless Gateway assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_private_wireless_gateway`

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
  response, err := client.SimCardGroups.Actions.SetPrivateWirelessGateway(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardGroupActionSetPrivateWirelessGatewayParams{
      PrivateWirelessGatewayID: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Request Wireless Blocklist assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_wireless_blocklist`

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
  response, err := client.SimCardGroups.Actions.SetWirelessBlocklist(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardGroupActionSetWirelessBlocklistParams{
      WirelessBlocklistID: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List SIM card group actions

`GET /sim_card_group_actions`

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
  page, err := client.SimCardGroups.Actions.List(context.TODO(), telnyx.SimCardGroupActionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get SIM card group action details

`GET /sim_card_group_actions/{id}`

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
  action, err := client.SimCardGroups.Actions.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", action.Data)
}
```

## Get all SIM card orders

`GET /sim_card_orders`

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
  page, err := client.SimCardOrders.List(context.TODO(), telnyx.SimCardOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a SIM card order

`POST /sim_card_orders`

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
  simCardOrder, err := client.SimCardOrders.New(context.TODO(), telnyx.SimCardOrderNewParams{
    AddressID: "1293384261075731499",
    Quantity: 23,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardOrder.Data)
}
```

## Get a single SIM card order

`GET /sim_card_orders/{id}`

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
  simCardOrder, err := client.SimCardOrders.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardOrder.Data)
}
```

## Preview SIM card orders

`POST /sim_card_order_preview`

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
  response, err := client.SimCardOrderPreview.Preview(context.TODO(), telnyx.SimCardOrderPreviewPreviewParams{
    AddressID: "1293384261075731499",
    Quantity: 21,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List SIM card data usage notifications

`GET /sim_card_data_usage_notifications`

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
  page, err := client.SimCardDataUsageNotifications.List(context.TODO(), telnyx.SimCardDataUsageNotificationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a new SIM card data usage notification

`POST /sim_card_data_usage_notifications`

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
  simCardDataUsageNotification, err := client.SimCardDataUsageNotifications.New(context.TODO(), telnyx.SimCardDataUsageNotificationNewParams{
    SimCardID: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    Threshold: telnyx.SimCardDataUsageNotificationNewParamsThreshold{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardDataUsageNotification.Data)
}
```

## Get a single SIM card data usage notification

`GET /sim_card_data_usage_notifications/{id}`

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
  simCardDataUsageNotification, err := client.SimCardDataUsageNotifications.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardDataUsageNotification.Data)
}
```

## Updates information for a SIM Card Data Usage Notification

`PATCH /sim_card_data_usage_notifications/{id}`

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
  simCardDataUsageNotification, err := client.SimCardDataUsageNotifications.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.SimCardDataUsageNotificationUpdateParams{
      SimCardDataUsageNotification: telnyx.SimCardDataUsageNotificationParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardDataUsageNotification.Data)
}
```

## Delete SIM card data usage notifications

`DELETE /sim_card_data_usage_notifications/{id}`

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
  simCardDataUsageNotification, err := client.SimCardDataUsageNotifications.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", simCardDataUsageNotification.Data)
}
```

## Purchase eSIMs

`POST /actions/purchase/esims`

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
  purchase, err := client.Actions.Purchase.New(context.TODO(), telnyx.ActionPurchaseNewParams{
    Amount: 10,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", purchase.Data)
}
```

## Register SIM cards

`POST /actions/register/sim_cards`

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
  register, err := client.Actions.Register.New(context.TODO(), telnyx.ActionRegisterNewParams{
    RegistrationCodes: []string{"0000000001", "0000000002", "0000000003"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", register.Data)
}
```

## List OTA updates

`GET /ota_updates`

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
  page, err := client.OtaUpdates.List(context.TODO(), telnyx.OtaUpdateListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get OTA update

`GET /ota_updates/{id}`

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
  otaUpdate, err := client.OtaUpdates.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", otaUpdate.Data)
}
```

## Get all Private Wireless Gateways

`GET /private_wireless_gateways`

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
  page, err := client.PrivateWirelessGateways.List(context.TODO(), telnyx.PrivateWirelessGatewayListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Private Wireless Gateway

`POST /private_wireless_gateways`

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
  privateWirelessGateway, err := client.PrivateWirelessGateways.New(context.TODO(), telnyx.PrivateWirelessGatewayNewParams{
    Name: "My private wireless gateway",
    NetworkID: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", privateWirelessGateway.Data)
}
```

## Get a Private Wireless Gateway

`GET /private_wireless_gateways/{id}`

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
  privateWirelessGateway, err := client.PrivateWirelessGateways.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", privateWirelessGateway.Data)
}
```

## Delete a Private Wireless Gateway

`DELETE /private_wireless_gateways/{id}`

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
  privateWirelessGateway, err := client.PrivateWirelessGateways.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", privateWirelessGateway.Data)
}
```

## Get all Wireless Blocklists

`GET /wireless_blocklists`

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
  page, err := client.WirelessBlocklists.List(context.TODO(), telnyx.WirelessBlocklistListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Wireless Blocklist

`POST /wireless_blocklists`

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
  wirelessBlocklist, err := client.WirelessBlocklists.New(context.TODO(), telnyx.WirelessBlocklistNewParams{
    Name: "My Wireless Blocklist",
    Type: telnyx.WirelessBlocklistNewParamsTypeCountry,
    Values: []string{"CA", "US"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wirelessBlocklist.Data)
}
```

## Update a Wireless Blocklist

`PATCH /wireless_blocklists`

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
  wirelessBlocklist, err := client.WirelessBlocklists.Update(context.TODO(), telnyx.WirelessBlocklistUpdateParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wirelessBlocklist.Data)
}
```

## Get a Wireless Blocklist

`GET /wireless_blocklists/{id}`

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
  wirelessBlocklist, err := client.WirelessBlocklists.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wirelessBlocklist.Data)
}
```

## Delete a Wireless Blocklist

`DELETE /wireless_blocklists/{id}`

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
  wirelessBlocklist, err := client.WirelessBlocklists.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wirelessBlocklist.Data)
}
```

## Get all possible wireless blocklist values

`GET /wireless_blocklist_values`

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
  wirelessBlocklistValues, err := client.WirelessBlocklistValues.List(context.TODO(), telnyx.WirelessBlocklistValueListParams{
    Type: telnyx.WirelessBlocklistValueListParamsTypeCountry,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wirelessBlocklistValues.Data)
}
```
