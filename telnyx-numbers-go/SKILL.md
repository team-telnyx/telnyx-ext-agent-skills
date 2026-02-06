---
name: telnyx-numbers-go
description: >-
  Search for available phone numbers by location and features, check coverage,
  and place orders. Use when acquiring new phone numbers. This skill provides Go
  SDK examples.
metadata:
  author: telnyx
  product: numbers
  language: go
---

# Telnyx Numbers - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Get country coverage

`GET /country_coverage`

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
  countryCoverage, err := client.CountryCoverage.Get(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", countryCoverage.Data)
}
```

## Get coverage for a specific country

`GET /country_coverage/countries/{country_code}`

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
  response, err := client.CountryCoverage.GetCountry(context.TODO(), "US")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Create an inventory coverage request

`GET /inventory_coverage`

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
  inventoryCoverages, err := client.InventoryCoverage.List(context.TODO(), telnyx.InventoryCoverageListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inventoryCoverages.Data)
}
```

## List number reservations

`GET /number_reservations`

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
  page, err := client.NumberReservations.List(context.TODO(), telnyx.NumberReservationListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a number reservation

`POST /number_reservations`

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
  numberReservation, err := client.NumberReservations.New(context.TODO(), telnyx.NumberReservationNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberReservation.Data)
}
```

## Retrieve a number reservation

`GET /number_reservations/{number_reservation_id}`

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
  numberReservation, err := client.NumberReservations.Get(context.TODO(), "number_reservation_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberReservation.Data)
}
```

## Extend a number reservation

`POST /number_reservations/{number_reservation_id}/actions/extend`

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
  response, err := client.NumberReservations.Actions.Extend(context.TODO(), "number_reservation_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List number orders

`GET /number_orders`

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
  page, err := client.NumberOrders.List(context.TODO(), telnyx.NumberOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a number order

`POST /number_orders`

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
  numberOrder, err := client.NumberOrders.New(context.TODO(), telnyx.NumberOrderNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberOrder.Data)
}
```

## Retrieve a number order

`GET /number_orders/{number_order_id}`

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
  numberOrder, err := client.NumberOrders.Get(context.TODO(), "number_order_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberOrder.Data)
}
```

## Update a number order

`PATCH /number_orders/{number_order_id}`

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
  numberOrder, err := client.NumberOrders.Update(
    context.TODO(),
    "number_order_id",
    telnyx.NumberOrderUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberOrder.Data)
}
```

## List number block orders

`GET /number_block_orders`

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
  page, err := client.NumberBlockOrders.List(context.TODO(), telnyx.NumberBlockOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a number block order

`POST /number_block_orders`

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
  numberBlockOrder, err := client.NumberBlockOrders.New(context.TODO(), telnyx.NumberBlockOrderNewParams{
    Range: 10,
    StartingNumber: "+19705555000",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberBlockOrder.Data)
}
```

## Retrieve a number block order

`GET /number_block_orders/{number_block_order_id}`

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
  numberBlockOrder, err := client.NumberBlockOrders.Get(context.TODO(), "number_block_order_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberBlockOrder.Data)
}
```

## Retrieve a list of phone numbers associated to orders

`GET /number_order_phone_numbers`

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
  numberOrderPhoneNumbers, err := client.NumberOrderPhoneNumbers.List(context.TODO(), telnyx.NumberOrderPhoneNumberListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberOrderPhoneNumbers.Data)
}
```

## Update requirement group for a phone number order

`POST /number_order_phone_numbers/{id}/requirement_group`

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
  response, err := client.NumberOrderPhoneNumbers.UpdateRequirementGroup(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.NumberOrderPhoneNumberUpdateRequirementGroupParams{
      RequirementGroupID: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve a single phone number within a number order.

`GET /number_order_phone_numbers/{number_order_phone_number_id}`

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
  numberOrderPhoneNumber, err := client.NumberOrderPhoneNumbers.Get(context.TODO(), "number_order_phone_number_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numberOrderPhoneNumber.Data)
}
```

## Update requirements for a single phone number within a number order.

`PATCH /number_order_phone_numbers/{number_order_phone_number_id}`

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
  response, err := client.NumberOrderPhoneNumbers.UpdateRequirements(
    context.TODO(),
    "number_order_phone_number_id",
    telnyx.NumberOrderPhoneNumberUpdateRequirementsParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List sub number orders

`GET /sub_number_orders`

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
  subNumberOrders, err := client.SubNumberOrders.List(context.TODO(), telnyx.SubNumberOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", subNumberOrders.Data)
}
```

## Update requirement group for a sub number order

`POST /sub_number_orders/{id}/requirement_group`

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
  response, err := client.SubNumberOrders.UpdateRequirementGroup(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.SubNumberOrderUpdateRequirementGroupParams{
      RequirementGroupID: "a4b201f9-8646-4e54-a7d2-b2e403eeaf8c",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Retrieve a sub number order

`GET /sub_number_orders/{sub_number_order_id}`

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
  subNumberOrder, err := client.SubNumberOrders.Get(
    context.TODO(),
    "sub_number_order_id",
    telnyx.SubNumberOrderGetParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", subNumberOrder.Data)
}
```

## Update a sub number order's requirements

`PATCH /sub_number_orders/{sub_number_order_id}`

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
  subNumberOrder, err := client.SubNumberOrders.Update(
    context.TODO(),
    "sub_number_order_id",
    telnyx.SubNumberOrderUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", subNumberOrder.Data)
}
```

## Cancel a sub number order

`PATCH /sub_number_orders/{sub_number_order_id}/cancel`

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
  response, err := client.SubNumberOrders.Cancel(context.TODO(), "sub_number_order_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Create a sub number orders report

`POST /sub_number_orders/report`

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
  subNumberOrdersReport, err := client.SubNumberOrdersReport.New(context.TODO(), telnyx.SubNumberOrdersReportNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", subNumberOrdersReport.Data)
}
```

## Retrieve a sub number orders report

`GET /sub_number_orders/report/{report_id}`

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
  subNumberOrdersReport, err := client.SubNumberOrdersReport.Get(context.TODO(), "12ade33a-21c0-473b-b055-b3c836e1c293")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", subNumberOrdersReport.Data)
}
```

## Download a sub number orders report

`GET /sub_number_orders/report/{report_id}/download`

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
  response, err := client.SubNumberOrdersReport.Download(context.TODO(), "12ade33a-21c0-473b-b055-b3c836e1c293")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List Advanced Orders

`GET /advanced_orders`

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
  advancedOrders, err := client.AdvancedOrders.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", advancedOrders.Data)
}
```

## Create Advanced Order

`POST /advanced_orders`

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
  advancedOrder, err := client.AdvancedOrders.New(context.TODO(), telnyx.AdvancedOrderNewParams{
    AdvancedOrder: telnyx.AdvancedOrderParam{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", advancedOrder.ID)
}
```

## Update Advanced Order

`PATCH /advanced_orders/{advanced-order-id}/requirement_group`

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
  response, err := client.AdvancedOrders.UpdateRequirementGroup(
    context.TODO(),
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    telnyx.AdvancedOrderUpdateRequirementGroupParams{
      AdvancedOrder: telnyx.AdvancedOrderParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.ID)
}
```

## Get Advanced Order

`GET /advanced_orders/{order_id}`

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
  advancedOrder, err := client.AdvancedOrders.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", advancedOrder.ID)
}
```

## List inexplicit number orders

`GET /inexplicit_number_orders`

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
  page, err := client.InexplicitNumberOrders.List(context.TODO(), telnyx.InexplicitNumberOrderListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an inexplicit number order

`POST /inexplicit_number_orders`

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
  inexplicitNumberOrder, err := client.InexplicitNumberOrders.New(context.TODO(), telnyx.InexplicitNumberOrderNewParams{
    OrderingGroups: []telnyx.InexplicitNumberOrderNewParamsOrderingGroup{telnyx.InexplicitNumberOrderNewParamsOrderingGroup{
      CountRequested: "count_requested",
      CountryISO: "US",
      PhoneNumberType: "phone_number_type",
    }},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inexplicitNumberOrder.Data)
}
```

## Retrieve an inexplicit number order

`GET /inexplicit_number_orders/{id}`

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
  inexplicitNumberOrder, err := client.InexplicitNumberOrders.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inexplicitNumberOrder.Data)
}
```

## Retrieve all comments

`GET /comments`

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
  comments, err := client.Comments.List(context.TODO(), telnyx.CommentListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", comments.Data)
}
```

## Create a comment

`POST /comments`

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
  comment, err := client.Comments.New(context.TODO(), telnyx.CommentNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", comment.Data)
}
```

## Retrieve a comment

`GET /comments/{id}`

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
  comment, err := client.Comments.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", comment.Data)
}
```

## Mark a comment as read

`PATCH /comments/{id}/read`

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
  response, err := client.Comments.MarkAsRead(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List available phone number blocks

`GET /available_phone_number_blocks`

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
  availablePhoneNumberBlocks, err := client.AvailablePhoneNumberBlocks.List(context.TODO(), telnyx.AvailablePhoneNumberBlockListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", availablePhoneNumberBlocks.Data)
}
```

## List available phone numbers

`GET /available_phone_numbers`

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
  availablePhoneNumbers, err := client.AvailablePhoneNumbers.List(context.TODO(), telnyx.AvailablePhoneNumberListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", availablePhoneNumbers.Data)
}
```

## Retrieve the features for a list of numbers

`POST /numbers_features`

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
  numbersFeature, err := client.NumbersFeatures.New(context.TODO(), telnyx.NumbersFeatureNewParams{
    PhoneNumbers: []string{"string"},
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", numbersFeature.Data)
}
```
