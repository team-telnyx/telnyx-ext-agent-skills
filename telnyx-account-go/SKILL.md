---
name: telnyx-account-go
description: >-
  Manage account balance, payments, invoices, webhooks, and view audit logs and
  detail records. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: account
  language: go
---

# Telnyx Account - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List Audit Logs

`GET /audit_events`

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
  page, err := client.AuditEvents.List(context.TODO(), telnyx.AuditEventListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get user balance details

`GET /balance`

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
  balance, err := client.Balance.Get(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", balance.Data)
}
```

## Search detail records

`GET /detail_records`

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
  page, err := client.DetailRecords.List(context.TODO(), telnyx.DetailRecordListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List invoices

`GET /invoices`

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
  page, err := client.Invoices.List(context.TODO(), telnyx.InvoiceListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get invoice by ID

`GET /invoices/{id}`

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
  invoice, err := client.Invoices.Get(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.InvoiceGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", invoice.Data)
}
```

## List auto recharge preferences

`GET /payments/auto_recharge_prefs`

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
  autoRechargePrefs, err := client.Payment.AutoRechargePrefs.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", autoRechargePrefs.Data)
}
```

## Update auto recharge preferences

`PATCH /payments/auto_recharge_prefs`

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
  autoRechargePref, err := client.Payment.AutoRechargePrefs.Update(context.TODO(), telnyx.PaymentAutoRechargePrefUpdateParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", autoRechargePref.Data)
}
```

## List User Tags

`GET /user_tags`

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
  userTags, err := client.UserTags.List(context.TODO(), telnyx.UserTagListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", userTags.Data)
}
```

## List webhook deliveries

`GET /webhook_deliveries`

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
  page, err := client.WebhookDeliveries.List(context.TODO(), telnyx.WebhookDeliveryListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Find webhook_delivery details by ID

`GET /webhook_deliveries/{id}`

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
  webhookDelivery, err := client.WebhookDeliveries.Get(context.TODO(), "C9C0797E-901D-4349-A33C-C2C8F31A92C2")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", webhookDelivery.Data)
}
```
