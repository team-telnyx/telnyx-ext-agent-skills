---
name: telnyx-sip-go
description: >-
  Configure SIP trunking connections and outbound voice profiles. Use when
  connecting PBX systems or managing SIP infrastructure. This skill provides Go
  SDK examples.
metadata:
  author: telnyx
  product: sip
  language: go
---

# Telnyx Sip - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## Get all outbound voice profiles

`GET /outbound_voice_profiles`

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
  page, err := client.OutboundVoiceProfiles.List(context.TODO(), telnyx.OutboundVoiceProfileListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an outbound voice profile

`POST /outbound_voice_profiles`

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
  outboundVoiceProfile, err := client.OutboundVoiceProfiles.New(context.TODO(), telnyx.OutboundVoiceProfileNewParams{
    Name: "office",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", outboundVoiceProfile.Data)
}
```

## Retrieve an outbound voice profile

`GET /outbound_voice_profiles/{id}`

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
  outboundVoiceProfile, err := client.OutboundVoiceProfiles.Get(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", outboundVoiceProfile.Data)
}
```

## Updates an existing outbound voice profile.

`PATCH /outbound_voice_profiles/{id}`

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
  outboundVoiceProfile, err := client.OutboundVoiceProfiles.Update(
    context.TODO(),
    "1293384261075731499",
    telnyx.OutboundVoiceProfileUpdateParams{
      Name: "office",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", outboundVoiceProfile.Data)
}
```

## Delete an outbound voice profile

`DELETE /outbound_voice_profiles/{id}`

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
  outboundVoiceProfile, err := client.OutboundVoiceProfiles.Delete(context.TODO(), "1293384261075731499")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", outboundVoiceProfile.Data)
}
```

## List connections

`GET /connections`

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
  page, err := client.Connections.List(context.TODO(), telnyx.ConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Retrieve a connection

`GET /connections/{id}`

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
  connection, err := client.Connections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", connection.Data)
}
```

## List credential connections

`GET /credential_connections`

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
  page, err := client.CredentialConnections.List(context.TODO(), telnyx.CredentialConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a credential connection

`POST /credential_connections`

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
  credentialConnection, err := client.CredentialConnections.New(context.TODO(), telnyx.CredentialConnectionNewParams{
    ConnectionName: "my name",
    Password: "my123secure456password789",
    UserName: "myusername123",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", credentialConnection.Data)
}
```

## Retrieve a credential connection

`GET /credential_connections/{id}`

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
  credentialConnection, err := client.CredentialConnections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", credentialConnection.Data)
}
```

## Update a credential connection

`PATCH /credential_connections/{id}`

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
  credentialConnection, err := client.CredentialConnections.Update(
    context.TODO(),
    "id",
    telnyx.CredentialConnectionUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", credentialConnection.Data)
}
```

## Delete a credential connection

`DELETE /credential_connections/{id}`

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
  credentialConnection, err := client.CredentialConnections.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", credentialConnection.Data)
}
```

## Check a Credential Connection Registration Status

`POST /credential_connections/{id}/actions/check_registration_status`

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
  response, err := client.CredentialConnections.Actions.CheckRegistrationStatus(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Data)
}
```

## List Ips

`GET /ips`

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
  page, err := client.IPs.List(context.TODO(), telnyx.IPListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an Ip

`POST /ips`

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
  ip, err := client.IPs.New(context.TODO(), telnyx.IPNewParams{
    IPAddress: "192.168.0.0",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ip.Data)
}
```

## Retrieve an Ip

`GET /ips/{id}`

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
  ip, err := client.IPs.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ip.Data)
}
```

## Update an Ip

`PATCH /ips/{id}`

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
  ip, err := client.IPs.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.IPUpdateParams{
      IPAddress: "192.168.0.0",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ip.Data)
}
```

## Delete an Ip

`DELETE /ips/{id}`

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
  ip, err := client.IPs.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ip.Data)
}
```

## List Ip connections

`GET /ip_connections`

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
  page, err := client.IPConnections.List(context.TODO(), telnyx.IPConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an Ip connection

`POST /ip_connections`

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
  ipConnection, err := client.IPConnections.New(context.TODO(), telnyx.IPConnectionNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ipConnection.Data)
}
```

## Retrieve an Ip connection

`GET /ip_connections/{id}`

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
  ipConnection, err := client.IPConnections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ipConnection.Data)
}
```

## Update an Ip connection

`PATCH /ip_connections/{id}`

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
  ipConnection, err := client.IPConnections.Update(
    context.TODO(),
    "id",
    telnyx.IPConnectionUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ipConnection.Data)
}
```

## Delete an Ip connection

`DELETE /ip_connections/{id}`

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
  ipConnection, err := client.IPConnections.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", ipConnection.Data)
}
```

## List FQDNs

`GET /fqdns`

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
  page, err := client.Fqdns.List(context.TODO(), telnyx.FqdnListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an FQDN

`POST /fqdns`

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
  fqdn, err := client.Fqdns.New(context.TODO(), telnyx.FqdnNewParams{
    ConnectionID: "1516447646313612565",
    DNSRecordType: "a",
    Fqdn: "example.com",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdn.Data)
}
```

## Retrieve an FQDN

`GET /fqdns/{id}`

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
  fqdn, err := client.Fqdns.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdn.Data)
}
```

## Update an FQDN

`PATCH /fqdns/{id}`

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
  fqdn, err := client.Fqdns.Update(
    context.TODO(),
    "id",
    telnyx.FqdnUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdn.Data)
}
```

## Delete an FQDN

`DELETE /fqdns/{id}`

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
  fqdn, err := client.Fqdns.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdn.Data)
}
```

## List FQDN connections

`GET /fqdn_connections`

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
  page, err := client.FqdnConnections.List(context.TODO(), telnyx.FqdnConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create an FQDN connection

`POST /fqdn_connections`

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
  fqdnConnection, err := client.FqdnConnections.New(context.TODO(), telnyx.FqdnConnectionNewParams{
    ConnectionName: "string",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdnConnection.Data)
}
```

## Retrieve an FQDN connection

`GET /fqdn_connections/{id}`

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
  fqdnConnection, err := client.FqdnConnections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdnConnection.Data)
}
```

## Update an FQDN connection

`PATCH /fqdn_connections/{id}`

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
  fqdnConnection, err := client.FqdnConnections.Update(
    context.TODO(),
    "id",
    telnyx.FqdnConnectionUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdnConnection.Data)
}
```

## Delete an FQDN connection

`DELETE /fqdn_connections/{id}`

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
  fqdnConnection, err := client.FqdnConnections.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", fqdnConnection.Data)
}
```

## List Mobile Voice Connections

`GET /v2/mobile_voice_connections`

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
  page, err := client.MobileVoiceConnections.List(context.TODO(), telnyx.MobileVoiceConnectionListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Mobile Voice Connection

`POST /v2/mobile_voice_connections`

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
  mobileVoiceConnection, err := client.MobileVoiceConnections.New(context.TODO(), telnyx.MobileVoiceConnectionNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mobileVoiceConnection.Data)
}
```

## Retrieve a Mobile Voice Connection

`GET /v2/mobile_voice_connections/{id}`

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
  mobileVoiceConnection, err := client.MobileVoiceConnections.Get(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mobileVoiceConnection.Data)
}
```

## Update a Mobile Voice Connection

`PATCH /v2/mobile_voice_connections/{id}`

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
  mobileVoiceConnection, err := client.MobileVoiceConnections.Update(
    context.TODO(),
    "id",
    telnyx.MobileVoiceConnectionUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mobileVoiceConnection.Data)
}
```

## Delete a Mobile Voice Connection

`DELETE /v2/mobile_voice_connections/{id}`

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
  mobileVoiceConnection, err := client.MobileVoiceConnections.Delete(context.TODO(), "id")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", mobileVoiceConnection.Data)
}
```
