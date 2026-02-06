---
name: telnyx-porting-in-go
description: >-
  Port phone numbers into Telnyx. Check portability, create port orders, upload
  LOA documents, and track porting status. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: porting-in
  language: go
---

# Telnyx Porting In - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all porting events

`GET /porting/events`

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
  page, err := client.Porting.Events.List(context.TODO(), telnyx.PortingEventListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Show a porting event

`GET /porting/events/{id}`

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
  event, err := client.Porting.Events.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", event.Data)
}
```

## Republish a porting event

`POST /porting/events/{id}/republish`

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
  err := client.Porting.Events.Republish(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Preview the LOA configuration parameters

`POST /porting/loa_configuration_preview`

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
  response, err := client.Porting.LoaConfigurations.Preview0(context.TODO(), telnyx.PortingLoaConfigurationPreview0Params{
    Address: telnyx.PortingLoaConfigurationPreview0ParamsAddress{
      City: "Austin",
      CountryCode: "US",
      State: "TX",
      StreetAddress: "600 Congress Avenue",
      ZipCode: "78701",
    },
    CompanyName: "Telnyx",
    Contact: telnyx.PortingLoaConfigurationPreview0ParamsContact{
      Email: "testing@telnyx.com",
      PhoneNumber: "+12003270001",
    },
    Logo: telnyx.PortingLoaConfigurationPreview0ParamsLogo{
      DocumentID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
    Name: "My LOA Configuration",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List LOA configurations

`GET /porting/loa_configurations`

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
  page, err := client.Porting.LoaConfigurations.List(context.TODO(), telnyx.PortingLoaConfigurationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a LOA configuration

`POST /porting/loa_configurations`

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
  loaConfiguration, err := client.Porting.LoaConfigurations.New(context.TODO(), telnyx.PortingLoaConfigurationNewParams{
    Address: telnyx.PortingLoaConfigurationNewParamsAddress{
      City: "Austin",
      CountryCode: "US",
      State: "TX",
      StreetAddress: "600 Congress Avenue",
      ZipCode: "78701",
    },
    CompanyName: "Telnyx",
    Contact: telnyx.PortingLoaConfigurationNewParamsContact{
      Email: "testing@telnyx.com",
      PhoneNumber: "+12003270001",
    },
    Logo: telnyx.PortingLoaConfigurationNewParamsLogo{
      DocumentID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
    Name: "My LOA Configuration",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", loaConfiguration.Data)
}
```

## Retrieve a LOA configuration

`GET /porting/loa_configurations/{id}`

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
  loaConfiguration, err := client.Porting.LoaConfigurations.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", loaConfiguration.Data)
}
```

## Update a LOA configuration

`PATCH /porting/loa_configurations/{id}`

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
  loaConfiguration, err := client.Porting.LoaConfigurations.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingLoaConfigurationUpdateParams{
      Address: telnyx.PortingLoaConfigurationUpdateParamsAddress{
        City: "Austin",
        CountryCode: "US",
        State: "TX",
        StreetAddress: "600 Congress Avenue",
        ZipCode: "78701",
      },
      CompanyName: "Telnyx",
      Contact: telnyx.PortingLoaConfigurationUpdateParamsContact{
        Email: "testing@telnyx.com",
        PhoneNumber: "+12003270001",
      },
      Logo: telnyx.PortingLoaConfigurationUpdateParamsLogo{
        DocumentID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
      },
      Name: "My LOA Configuration",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", loaConfiguration.Data)
}
```

## Delete a LOA configuration

`DELETE /porting/loa_configurations/{id}`

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
  err := client.Porting.LoaConfigurations.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Preview a LOA configuration

`GET /porting/loa_configurations/{id}/preview`

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
  response, err := client.Porting.LoaConfigurations.Preview1(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List all porting orders

`GET /porting_orders`

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
  page, err := client.PortingOrders.List(context.TODO(), telnyx.PortingOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a porting order

`POST /porting_orders`

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
  portingOrder, err := client.PortingOrders.New(context.TODO(), telnyx.PortingOrderNewParams{
    PhoneNumbers: []string{"+13035550000", "+13035550001", "+13035550002"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", portingOrder.Data)
}
```

## Retrieve a porting order

`GET /porting_orders/{id}`

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
  portingOrder, err := client.PortingOrders.Get(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", portingOrder.Data)
}
```

## Edit a porting order

`PATCH /porting_orders/{id}`

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
  portingOrder, err := client.PortingOrders.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", portingOrder.Data)
}
```

## Delete a porting order

`DELETE /porting_orders/{id}`

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
  err := client.PortingOrders.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
}
```

## Activate every number in a porting order asynchronously.

`POST /porting_orders/{id}/actions/activate`

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
  response, err := client.PortingOrders.Actions.Activate(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Cancel a porting order

`POST /porting_orders/{id}/actions/cancel`

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
  response, err := client.PortingOrders.Actions.Cancel(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Submit a porting order.

`POST /porting_orders/{id}/actions/confirm`

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
  response, err := client.PortingOrders.Actions.Confirm(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Share a porting order

`POST /porting_orders/{id}/actions/share`

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
  response, err := client.PortingOrders.Actions.Share(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderActionShareParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all porting activation jobs

`GET /porting_orders/{id}/activation_jobs`

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
  page, err := client.PortingOrders.ActivationJobs.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderActivationJobListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a porting activation job

`GET /porting_orders/{id}/activation_jobs/{activationJobId}`

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
  activationJob, err := client.PortingOrders.ActivationJobs.Get(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderActivationJobGetParams{
      ID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", activationJob.Data)
}
```

## Update a porting activation job

`PATCH /porting_orders/{id}/activation_jobs/{activationJobId}`

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
  activationJob, err := client.PortingOrders.ActivationJobs.Update(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderActivationJobUpdateParams{
      ID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", activationJob.Data)
}
```

## List additional documents

`GET /porting_orders/{id}/additional_documents`

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
  page, err := client.PortingOrders.AdditionalDocuments.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAdditionalDocumentListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a list of additional documents

`POST /porting_orders/{id}/additional_documents`

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
  additionalDocument, err := client.PortingOrders.AdditionalDocuments.New(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAdditionalDocumentNewParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", additionalDocument.Data)
}
```

## Delete an additional document

`DELETE /porting_orders/{id}/additional_documents/{additional_document_id}`

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
  err := client.PortingOrders.AdditionalDocuments.Delete(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAdditionalDocumentDeleteParams{
      ID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## List allowed FOC dates

`GET /porting_orders/{id}/allowed_foc_windows`

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
  response, err := client.PortingOrders.GetAllowedFocWindows(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all comments of a porting order

`GET /porting_orders/{id}/comments`

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
  page, err := client.PortingOrders.Comments.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderCommentListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a comment for a porting order

`POST /porting_orders/{id}/comments`

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
  comment, err := client.PortingOrders.Comments.New(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderCommentNewParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", comment.Data)
}
```

## Download a porting order loa template

`GET /porting_orders/{id}/loa_template`

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
  response, err := client.PortingOrders.GetLoaTemplate(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderGetLoaTemplateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List porting order requirements

`GET /porting_orders/{id}/requirements`

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
  page, err := client.PortingOrders.GetRequirements(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderGetRequirementsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve the associated V1 sub_request_id and port_request_id

`GET /porting_orders/{id}/sub_request`

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
  response, err := client.PortingOrders.GetSubRequest(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List verification codes

`GET /porting_orders/{id}/verification_codes`

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
  page, err := client.PortingOrders.VerificationCodes.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderVerificationCodeListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Send the verification codes

`POST /porting_orders/{id}/verification_codes/send`

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
  err := client.PortingOrders.VerificationCodes.Send(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderVerificationCodeSendParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Verify the verification code for a list of phone numbers

`POST /porting_orders/{id}/verification_codes/verify`

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
  response, err := client.PortingOrders.VerificationCodes.Verify(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderVerificationCodeVerifyParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List action requirements for a porting order

`GET /porting_orders/{porting_order_id}/action_requirements`

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
  page, err := client.PortingOrders.ActionRequirements.List(
    context.TODO(),
    "porting_order_id",
    telnyx.PortingOrderActionRequirementListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Initiate an action requirement

`POST /porting_orders/{porting_order_id}/action_requirements/{id}/initiate`

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
  response, err := client.PortingOrders.ActionRequirements.Initiate(
    context.TODO(),
    "id",
    telnyx.PortingOrderActionRequirementInitiateParams{
      PortingOrderID: "porting_order_id",
      Params: telnyx.PortingOrderActionRequirementInitiateParamsParams{
        FirstName: "John",
        LastName: "Doe",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all associated phone numbers

`GET /porting_orders/{porting_order_id}/associated_phone_numbers`

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
  page, err := client.PortingOrders.AssociatedPhoneNumbers.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAssociatedPhoneNumberListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an associated phone number

`POST /porting_orders/{porting_order_id}/associated_phone_numbers`

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
  associatedPhoneNumber, err := client.PortingOrders.AssociatedPhoneNumbers.New(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAssociatedPhoneNumberNewParams{
      Action: telnyx.PortingOrderAssociatedPhoneNumberNewParamsActionKeep,
      PhoneNumberRange: telnyx.PortingOrderAssociatedPhoneNumberNewParamsPhoneNumberRange{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", associatedPhoneNumber.Data)
}
```

## Delete an associated phone number

`DELETE /porting_orders/{porting_order_id}/associated_phone_numbers/{id}`

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
  associatedPhoneNumber, err := client.PortingOrders.AssociatedPhoneNumbers.Delete(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderAssociatedPhoneNumberDeleteParams{
      PortingOrderID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", associatedPhoneNumber.Data)
}
```

## List all phone number blocks

`GET /porting_orders/{porting_order_id}/phone_number_blocks`

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
  page, err := client.PortingOrders.PhoneNumberBlocks.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberBlockListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a phone number block

`POST /porting_orders/{porting_order_id}/phone_number_blocks`

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
  phoneNumberBlock, err := client.PortingOrders.PhoneNumberBlocks.New(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberBlockNewParams{
      ActivationRanges: []telnyx.PortingOrderPhoneNumberBlockNewParamsActivationRange{telnyx.PortingOrderPhoneNumberBlockNewParamsActivationRange{
        EndAt: "+4930244999910",
        StartAt: "+4930244999901",
      }},
      PhoneNumberRange: telnyx.PortingOrderPhoneNumberBlockNewParamsPhoneNumberRange{
        EndAt: "+4930244999910",
        StartAt: "+4930244999901",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberBlock.Data)
}
```

## Delete a phone number block

`DELETE /porting_orders/{porting_order_id}/phone_number_blocks/{id}`

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
  phoneNumberBlock, err := client.PortingOrders.PhoneNumberBlocks.Delete(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberBlockDeleteParams{
      PortingOrderID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberBlock.Data)
}
```

## List all phone number extensions

`GET /porting_orders/{porting_order_id}/phone_number_extensions`

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
  page, err := client.PortingOrders.PhoneNumberExtensions.List(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberExtensionListParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a phone number extension

`POST /porting_orders/{porting_order_id}/phone_number_extensions`

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
  phoneNumberExtension, err := client.PortingOrders.PhoneNumberExtensions.New(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberExtensionNewParams{
      ActivationRanges: []telnyx.PortingOrderPhoneNumberExtensionNewParamsActivationRange{telnyx.PortingOrderPhoneNumberExtensionNewParamsActivationRange{
        EndAt: 10,
        StartAt: 1,
      }},
      ExtensionRange: telnyx.PortingOrderPhoneNumberExtensionNewParamsExtensionRange{
        EndAt: 10,
        StartAt: 1,
      },
      PortingPhoneNumberID: "f24151b6-3389-41d3-8747-7dd8c681e5e2",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberExtension.Data)
}
```

## Delete a phone number extension

`DELETE /porting_orders/{porting_order_id}/phone_number_extensions/{id}`

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
  phoneNumberExtension, err := client.PortingOrders.PhoneNumberExtensions.Delete(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.PortingOrderPhoneNumberExtensionDeleteParams{
      PortingOrderID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberExtension.Data)
}
```

## List all exception types

`GET /porting_orders/exception_types`

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
  response, err := client.PortingOrders.GetExceptionTypes(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List all phone number configurations

`GET /porting_orders/phone_number_configurations`

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
  page, err := client.PortingOrders.PhoneNumberConfigurations.List(context.TODO(), telnyx.PortingOrderPhoneNumberConfigurationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a list of phone number configurations

`POST /porting_orders/phone_number_configurations`

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
  phoneNumberConfiguration, err := client.PortingOrders.PhoneNumberConfigurations.New(context.TODO(), telnyx.PortingOrderPhoneNumberConfigurationNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberConfiguration.Data)
}
```

## List all porting phone numbers

`GET /porting/phone_numbers`

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
  page, err := client.PortingPhoneNumbers.List(context.TODO(), telnyx.PortingPhoneNumberListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List porting related reports

`GET /porting/reports`

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
  page, err := client.Porting.Reports.List(context.TODO(), telnyx.PortingReportListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a porting related report

`POST /porting/reports`

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
  report, err := client.Porting.Reports.New(context.TODO(), telnyx.PortingReportNewParams{
    Params: telnyx.ExportPortingOrdersCsvReportParam{
      Filters: telnyx.ExportPortingOrdersCsvReportFiltersParam{

      },
    },
    ReportType: telnyx.PortingReportNewParamsReportTypeExportPortingOrdersCsv,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", report.Data)
}
```

## Retrieve a report

`GET /porting/reports/{id}`

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
  report, err := client.Porting.Reports.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", report.Data)
}
```

## List available carriers in the UK

`GET /porting/uk_carriers`

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
  response, err := client.Porting.ListUkCarriers(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Run a portability check

`POST /portability_checks`

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
  response, err := client.PortabilityChecks.Run(context.TODO(), telnyx.PortabilityCheckRunParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```
