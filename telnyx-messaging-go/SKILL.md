---
name: telnyx-messaging-go
description: >-
  Send and receive SMS/MMS messages, manage messaging-enabled phone numbers, and
  handle opt-outs. Use when building messaging applications, implementing 2FA,
  or sending notifications. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: messaging
  language: go
---

# Telnyx Messaging - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Send a message

`POST /messages`

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
  response, err := client.Messages.Send(context.TODO(), telnyx.MessageSendParams{
    To: "+18445550001",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve a message

`GET /messages/{id}`

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
  message, err := client.Messages.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", message.Data)
}
```

## Cancel a scheduled message

`DELETE /messages/{id}`

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
  response, err := client.Messages.CancelScheduled(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.ID)
}
```

## Send a Whatsapp message

`POST /messages/whatsapp`

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
  response, err := client.Messages.SendWhatsapp(context.TODO(), telnyx.MessageSendWhatsappParams{
    From: "+13125551234",
    To: "+13125551234",
    WhatsappMessage: telnyx.MessageSendWhatsappParamsWhatsappMessage{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Send a group MMS message

`POST /messages/group_mms`

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
  response, err := client.Messages.SendGroupMms(context.TODO(), telnyx.MessageSendGroupMmsParams{
    From: "+13125551234",
    To: []string{"+18655551234", "+14155551234"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Send a long code message

`POST /messages/long_code`

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
  response, err := client.Messages.SendLongCode(context.TODO(), telnyx.MessageSendLongCodeParams{
    From: "+18445550001",
    To: "+13125550002",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Send a message using number pool

`POST /messages/number_pool`

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
  response, err := client.Messages.SendNumberPool(context.TODO(), telnyx.MessageSendNumberPoolParams{
    MessagingProfileID: "abc85f64-5717-4562-b3fc-2c9600000000",
    To: "+13125550002",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Schedule a message

`POST /messages/schedule`

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
  response, err := client.Messages.Schedule(context.TODO(), telnyx.MessageScheduleParams{
    To: "+18445550001",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Send a short code message

`POST /messages/short_code`

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
  response, err := client.Messages.SendShortCode(context.TODO(), telnyx.MessageSendShortCodeParams{
    From: "+18445550001",
    To: "+18445550001",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List opt-outs

`GET /messaging_optouts`

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
  page, err := client.MessagingOptouts.List(context.TODO(), telnyx.MessagingOptoutListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a phone number with messaging settings

`GET /phone_numbers/{id}/messaging`

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
  messaging, err := client.PhoneNumbers.Messaging.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## Update the messaging profile and/or messaging product of a phone number

`PATCH /phone_numbers/{id}/messaging`

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
  messaging, err := client.PhoneNumbers.Messaging.Update(
    context.TODO(),
    "id",
    telnyx.PhoneNumberMessagingUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## List phone numbers with messaging settings

`GET /phone_numbers/messaging`

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
  page, err := client.PhoneNumbers.Messaging.List(context.TODO(), telnyx.PhoneNumberMessagingListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a mobile phone number with messaging settings

`GET /mobile_phone_numbers/{id}/messaging`

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
  messaging, err := client.MobilePhoneNumbers.Messaging.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messaging.Data)
}
```

## List mobile phone numbers with messaging settings

`GET /mobile_phone_numbers/messaging`

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
  page, err := client.MobilePhoneNumbers.Messaging.List(context.TODO(), telnyx.MobilePhoneNumberMessagingListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Bulk update phone number profiles

`POST /messaging_numbers/bulk_updates`

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
  messagingNumbersBulkUpdate, err := client.MessagingNumbersBulkUpdates.New(context.TODO(), telnyx.MessagingNumbersBulkUpdateNewParams{
    MessagingProfileID: "00000000-0000-0000-0000-000000000000",
    Numbers: []string{"+18880000000", "+18880000001", "+18880000002"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingNumbersBulkUpdate.Data)
}
```

## Retrieve bulk update status

`GET /messaging_numbers/bulk_updates/{order_id}`

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
  messagingNumbersBulkUpdate, err := client.MessagingNumbersBulkUpdates.Get(context.TODO(), "order_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingNumbersBulkUpdate.Data)
}
```
