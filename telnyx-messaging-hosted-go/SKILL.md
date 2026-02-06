---
name: telnyx-messaging-hosted-go
description: >-
  Set up hosted SMS numbers, toll-free verification, and RCS messaging. Use when
  migrating numbers or enabling rich messaging features. This skill provides Go
  SDK examples.
metadata:
  author: telnyx
  product: messaging-hosted
  language: go
---

# Telnyx Messaging Hosted - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List messaging hosted number orders

`GET /messaging_hosted_number_orders`

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
  page, err := client.MessagingHostedNumberOrders.List(context.TODO(), telnyx.MessagingHostedNumberOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a messaging hosted number order

`POST /messaging_hosted_number_orders`

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
  messagingHostedNumberOrder, err := client.MessagingHostedNumberOrders.New(context.TODO(), telnyx.MessagingHostedNumberOrderNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingHostedNumberOrder.Data)
}
```

## Retrieve a messaging hosted number order

`GET /messaging_hosted_number_orders/{id}`

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
  messagingHostedNumberOrder, err := client.MessagingHostedNumberOrders.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingHostedNumberOrder.Data)
}
```

## Delete a messaging hosted number order

`DELETE /messaging_hosted_number_orders/{id}`

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
  messagingHostedNumberOrder, err := client.MessagingHostedNumberOrders.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingHostedNumberOrder.Data)
}
```

## Upload hosted number document

`POST /messaging_hosted_number_orders/{id}/actions/file_upload`

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
  response, err := client.MessagingHostedNumberOrders.Actions.UploadFile(
    context.TODO(),
    "id",
    telnyx.MessagingHostedNumberOrderActionUploadFileParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Validate hosted number codes

`POST /messaging_hosted_number_orders/{id}/validation_codes`

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
  response, err := client.MessagingHostedNumberOrders.ValidateCodes(
    context.TODO(),
    "id",
    telnyx.MessagingHostedNumberOrderValidateCodesParams{
      VerificationCodes: []telnyx.MessagingHostedNumberOrderValidateCodesParamsVerificationCode{telnyx.MessagingHostedNumberOrderValidateCodesParamsVerificationCode{
        Code: "code",
        PhoneNumber: "phone_number",
      }},
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Create hosted number verification codes

`POST /messaging_hosted_number_orders/{id}/verification_codes`

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
  response, err := client.MessagingHostedNumberOrders.NewVerificationCodes(
    context.TODO(),
    "id",
    telnyx.MessagingHostedNumberOrderNewVerificationCodesParams{
      PhoneNumbers: []string{"string"},
      VerificationMethod: telnyx.MessagingHostedNumberOrderNewVerificationCodesParamsVerificationMethodSMS,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Check hosted messaging eligibility

`POST /messaging_hosted_number_orders/eligibility_numbers_check`

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
  response, err := client.MessagingHostedNumberOrders.CheckEligibility(context.TODO(), telnyx.MessagingHostedNumberOrderCheckEligibilityParams{
    PhoneNumbers: []string{"string"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.PhoneNumbers)
}
```

## Delete a messaging hosted number

`DELETE /messaging_hosted_numbers/{id}`

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
  messagingHostedNumber, err := client.MessagingHostedNumbers.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", messagingHostedNumber.Data)
}
```

## Send an RCS message

`POST /messages/rcs`

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
  response, err := client.Messages.Rcs.Send(context.TODO(), telnyx.MessageRcSendParams{
    AgentID: "Agent007",
    AgentMessage: telnyx.RcsAgentMessageParam{

    },
    MessagingProfileID: "messaging_profile_id",
    To: "+13125551234",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all RCS agents

`GET /messaging/rcs/agents`

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
  page, err := client.Messaging.Rcs.Agents.List(context.TODO(), telnyx.MessagingRcAgentListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve an RCS agent

`GET /messaging/rcs/agents/{id}`

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
  rcsAgentResponse, err := client.Messaging.Rcs.Agents.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", rcsAgentResponse.Data)
}
```

## Modify an RCS agent

`PATCH /messaging/rcs/agents/{id}`

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
  rcsAgentResponse, err := client.Messaging.Rcs.Agents.Update(
    context.TODO(),
    "id",
    telnyx.MessagingRcAgentUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", rcsAgentResponse.Data)
}
```

## Check RCS capabilities (batch)

`POST /messaging/rcs/bulk_capabilities`

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
  response, err := client.Messaging.Rcs.ListBulkCapabilities(context.TODO(), telnyx.MessagingRcListBulkCapabilitiesParams{
    AgentID: "TestAgent",
    PhoneNumbers: []string{"+13125551234"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Check RCS capabilities

`GET /messaging/rcs/capabilities/{agent_id}/{phone_number}`

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
  response, err := client.Messaging.Rcs.GetCapabilities(
    context.TODO(),
    "phone_number",
    telnyx.MessagingRcGetCapabilitiesParams{
      AgentID: "agent_id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Add RCS test number

`PUT /messaging/rcs/test_number_invite/{id}/{phone_number}`

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
  response, err := client.Messaging.Rcs.InviteTestNumber(
    context.TODO(),
    "phone_number",
    telnyx.MessagingRcInviteTestNumberParams{
      ID: "id",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Generate RCS deeplink

`GET /messages/rcs_deeplinks/{agent_id}`

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
  response, err := client.Messages.Rcs.GenerateDeeplink(
    context.TODO(),
    "agent_id",
    telnyx.MessageRcGenerateDeeplinkParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List Verification Requests

`GET /messaging_tollfree/verification/requests`

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
  page, err := client.MessagingTollfree.Verification.Requests.List(context.TODO(), telnyx.MessagingTollfreeVerificationRequestListParams{
    Page: 1,
    PageSize: 1,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Submit Verification Request

`POST /messaging_tollfree/verification/requests`

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
  verificationRequestEgress, err := client.MessagingTollfree.Verification.Requests.New(context.TODO(), telnyx.MessagingTollfreeVerificationRequestNewParams{
    TfVerificationRequest: telnyx.TfVerificationRequestParam{
      AdditionalInformation: "additionalInformation",
      BusinessAddr1: "600 Congress Avenue",
      BusinessCity: "Austin",
      BusinessContactEmail: "email@example.com",
      BusinessContactFirstName: "John",
      BusinessContactLastName: "Doe",
      BusinessContactPhone: "+18005550100",
      BusinessName: "Telnyx LLC",
      BusinessState: "Texas",
      BusinessZip: "78701",
      CorporateWebsite: "http://example.com",
      IsvReseller: "isvReseller",
      MessageVolume: telnyx.VolumeV100000,
      OptInWorkflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
      OptInWorkflowImageURLs: []telnyx.URLParam{telnyx.URLParam{
        URL: "https://telnyx.com/sign-up",
      }, telnyx.URLParam{
        URL: "https://telnyx.com/company/data-privacy",
      }},
      PhoneNumbers: []telnyx.TfPhoneNumberParam{telnyx.TfPhoneNumberParam{
        PhoneNumber: "+18773554398",
      }, telnyx.TfPhoneNumberParam{
        PhoneNumber: "+18773554399",
      }},
      ProductionMessageContent: "Your Telnyx OTP is XXXX",
      UseCase: telnyx.UseCaseCategoriesTwoFa,
      UseCaseSummary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verificationRequestEgress.ID)
}
```

## Get Verification Request

`GET /messaging_tollfree/verification/requests/{id}`

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
  verificationRequestStatus, err := client.MessagingTollfree.Verification.Requests.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verificationRequestStatus.ID)
}
```

## Update Verification Request

`PATCH /messaging_tollfree/verification/requests/{id}`

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
  verificationRequestEgress, err := client.MessagingTollfree.Verification.Requests.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.MessagingTollfreeVerificationRequestUpdateParams{
      TfVerificationRequest: telnyx.TfVerificationRequestParam{
        AdditionalInformation: "additionalInformation",
        BusinessAddr1: "600 Congress Avenue",
        BusinessCity: "Austin",
        BusinessContactEmail: "email@example.com",
        BusinessContactFirstName: "John",
        BusinessContactLastName: "Doe",
        BusinessContactPhone: "+18005550100",
        BusinessName: "Telnyx LLC",
        BusinessState: "Texas",
        BusinessZip: "78701",
        CorporateWebsite: "http://example.com",
        IsvReseller: "isvReseller",
        MessageVolume: telnyx.VolumeV100000,
        OptInWorkflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
        OptInWorkflowImageURLs: []telnyx.URLParam{telnyx.URLParam{
          URL: "https://telnyx.com/sign-up",
        }, telnyx.URLParam{
          URL: "https://telnyx.com/company/data-privacy",
        }},
        PhoneNumbers: []telnyx.TfPhoneNumberParam{telnyx.TfPhoneNumberParam{
          PhoneNumber: "+18773554398",
        }, telnyx.TfPhoneNumberParam{
          PhoneNumber: "+18773554399",
        }},
        ProductionMessageContent: "Your Telnyx OTP is XXXX",
        UseCase: telnyx.UseCaseCategoriesTwoFa,
        UseCaseSummary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", verificationRequestEgress.ID)
}
```

## Delete Verification Request

`DELETE /messaging_tollfree/verification/requests/{id}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.MessagingTollfree.Verification.Requests.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```
