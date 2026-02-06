---
name: telnyx-numbers-services-go
description: >-
  Configure voicemail, voice channels, and emergency (E911) services for your
  phone numbers. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: numbers-services
  language: go
---

# Telnyx Numbers Services - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List dynamic emergency addresses

`GET /dynamic_emergency_addresses`

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
  page, err := client.DynamicEmergencyAddresses.List(context.TODO(), telnyx.DynamicEmergencyAddressListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a dynamic emergency address.

`POST /dynamic_emergency_addresses`

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
  dynamicEmergencyAddress, err := client.DynamicEmergencyAddresses.New(context.TODO(), telnyx.DynamicEmergencyAddressNewParams{
    DynamicEmergencyAddress: telnyx.DynamicEmergencyAddressParam{
      AdministrativeArea: "TX",
      CountryCode: telnyx.DynamicEmergencyAddressCountryCodeUs,
      HouseNumber: "600",
      Locality: "Austin",
      PostalCode: "78701",
      StreetName: "Congress",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyAddress.Data)
}
```

## Get a dynamic emergency address

`GET /dynamic_emergency_addresses/{id}`

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
  dynamicEmergencyAddress, err := client.DynamicEmergencyAddresses.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyAddress.Data)
}
```

## Delete a dynamic emergency address

`DELETE /dynamic_emergency_addresses/{id}`

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
  dynamicEmergencyAddress, err := client.DynamicEmergencyAddresses.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyAddress.Data)
}
```

## List dynamic emergency endpoints

`GET /dynamic_emergency_endpoints`

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
  page, err := client.DynamicEmergencyEndpoints.List(context.TODO(), telnyx.DynamicEmergencyEndpointListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a dynamic emergency endpoint.

`POST /dynamic_emergency_endpoints`

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
  dynamicEmergencyEndpoint, err := client.DynamicEmergencyEndpoints.New(context.TODO(), telnyx.DynamicEmergencyEndpointNewParams{
    DynamicEmergencyEndpoint: telnyx.DynamicEmergencyEndpointParam{
      CallbackNumber: "+13125550000",
      CallerName: "Jane Doe Desk Phone",
      DynamicEmergencyAddressID: "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyEndpoint.Data)
}
```

## Get a dynamic emergency endpoint

`GET /dynamic_emergency_endpoints/{id}`

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
  dynamicEmergencyEndpoint, err := client.DynamicEmergencyEndpoints.Get(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyEndpoint.Data)
}
```

## Delete a dynamic emergency endpoint

`DELETE /dynamic_emergency_endpoints/{id}`

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
  dynamicEmergencyEndpoint, err := client.DynamicEmergencyEndpoints.Delete(context.TODO(), "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", dynamicEmergencyEndpoint.Data)
}
```

## List your voice channels for non-US zones

`GET /channel_zones`

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
  page, err := client.ChannelZones.List(context.TODO(), telnyx.ChannelZoneListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Update voice channels for non-US Zones

`PUT /channel_zones/{channel_zone_id}`

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
  channelZone, err := client.ChannelZones.Update(
    context.TODO(),
    "channel_zone_id",
    telnyx.ChannelZoneUpdateParams{
      Channels: 0,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", channelZone.ID)
}
```

## List your voice channels for US Zone

`GET /inbound_channels`

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
  inboundChannels, err := client.InboundChannels.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inboundChannels.Data)
}
```

## Update voice channels for US Zone

`PATCH /inbound_channels`

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
  inboundChannel, err := client.InboundChannels.Update(context.TODO(), telnyx.InboundChannelUpdateParams{
    Channels: 7,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", inboundChannel.Data)
}
```

## List All Numbers using Channel Billing

`GET /list`

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
  response, err := client.List.GetAll(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List Numbers using Channel Billing for a specific Zone

`GET /list/{channel_zone_id}`

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
  response, err := client.List.GetByZone(context.TODO(), "channel_zone_id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## Get voicemail

`GET /phone_numbers/{phone_number_id}/voicemail`

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
  voicemail, err := client.PhoneNumbers.Voicemail.Get(context.TODO(), "123455678900")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voicemail.Data)
}
```

## Create voicemail

`POST /phone_numbers/{phone_number_id}/voicemail`

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
  voicemail, err := client.PhoneNumbers.Voicemail.New(
    context.TODO(),
    "123455678900",
    telnyx.PhoneNumberVoicemailNewParams{
      VoicemailRequest: telnyx.VoicemailRequestParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voicemail.Data)
}
```

## Update voicemail

`PATCH /phone_numbers/{phone_number_id}/voicemail`

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
  voicemail, err := client.PhoneNumbers.Voicemail.Update(
    context.TODO(),
    "123455678900",
    telnyx.PhoneNumberVoicemailUpdateParams{
      VoicemailRequest: telnyx.VoicemailRequestParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", voicemail.Data)
}
```
