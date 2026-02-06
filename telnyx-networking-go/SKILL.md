---
name: telnyx-networking-go
description: >-
  Configure private networks, WireGuard VPN gateways, internet gateways, and
  virtual cross connects. This skill provides Go SDK examples.
metadata:
  author: telnyx
  product: networking
  language: go
---

# Telnyx Networking - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List all Regions

`GET /regions`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  regions, err := client.Regions.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", regions.Data)
}
```

## List all Networks

`GET /networks`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Networks.List(context.TODO(), telnyx.NetworkListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Network

`POST /networks`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  network, err := client.Networks.New(context.TODO(), telnyx.NetworkNewParams{
    NetworkCreate: telnyx.NetworkCreateParam{
      RecordParam: telnyx.RecordParam{

      },
      Name: "test network",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", network.Data)
}
```

## Retrieve a Network

`GET /networks/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  network, err := client.Networks.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", network.Data)
}
```

## Update a Network

`PATCH /networks/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  network, err := client.Networks.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.NetworkUpdateParams{
      NetworkCreate: telnyx.NetworkCreateParam{
        RecordParam: telnyx.RecordParam{

        },
        Name: "test network",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", network.Data)
}
```

## Delete a Network

`DELETE /networks/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  network, err := client.Networks.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", network.Data)
}
```

## Get Default Gateway status.

`GET /networks/{id}/default_gateway`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  defaultGateway, err := client.Networks.DefaultGateway.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", defaultGateway.Data)
}
```

## Create Default Gateway.

`POST /networks/{id}/default_gateway`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  defaultGateway, err := client.Networks.DefaultGateway.New(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.NetworkDefaultGatewayNewParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", defaultGateway.Data)
}
```

## Delete Default Gateway.

`DELETE /networks/{id}/default_gateway`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  defaultGateway, err := client.Networks.DefaultGateway.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", defaultGateway.Data)
}
```

## List all Interfaces for a Network.

`GET /networks/{id}/network_interfaces`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Networks.ListInterfaces(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.NetworkListInterfacesParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List all WireGuard Interfaces

`GET /wireguard_interfaces`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.WireguardInterfaces.List(context.TODO(), telnyx.WireguardInterfaceListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a WireGuard Interface

`POST /wireguard_interfaces`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardInterface, err := client.WireguardInterfaces.New(context.TODO(), telnyx.WireguardInterfaceNewParams{
    RegionCode: "ashburn-va",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardInterface.Data)
}
```

## Retrieve a WireGuard Interfaces

`GET /wireguard_interfaces/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardInterface, err := client.WireguardInterfaces.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardInterface.Data)
}
```

## Delete a WireGuard Interface

`DELETE /wireguard_interfaces/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardInterface, err := client.WireguardInterfaces.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardInterface.Data)
}
```

## List all WireGuard Peers

`GET /wireguard_peers`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.WireguardPeers.List(context.TODO(), telnyx.WireguardPeerListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a WireGuard Peer

`POST /wireguard_peers`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardPeer, err := client.WireguardPeers.New(context.TODO(), telnyx.WireguardPeerNewParams{
    WireguardInterfaceID: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardPeer.Data)
}
```

## Retrieve the WireGuard Peer

`GET /wireguard_peers/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardPeer, err := client.WireguardPeers.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardPeer.Data)
}
```

## Update the WireGuard Peer

`PATCH /wireguard_peers/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardPeer, err := client.WireguardPeers.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.WireguardPeerUpdateParams{
      WireguardPeerPatch: telnyx.WireguardPeerPatchParam{

      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardPeer.Data)
}
```

## Delete the WireGuard Peer

`DELETE /wireguard_peers/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  wireguardPeer, err := client.WireguardPeers.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", wireguardPeer.Data)
}
```

## Retrieve Wireguard config template for Peer

`GET /wireguard_peers/{id}/config`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.WireguardPeers.GetConfig(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
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

## List all Public Internet Gateways

`GET /public_internet_gateways`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.PublicInternetGateways.List(context.TODO(), telnyx.PublicInternetGatewayListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Public Internet Gateway

`POST /public_internet_gateways`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  publicInternetGateway, err := client.PublicInternetGateways.New(context.TODO(), telnyx.PublicInternetGatewayNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", publicInternetGateway.Data)
}
```

## Retrieve a Public Internet Gateway

`GET /public_internet_gateways/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  publicInternetGateway, err := client.PublicInternetGateways.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", publicInternetGateway.Data)
}
```

## Delete a Public Internet Gateway

`DELETE /public_internet_gateways/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  publicInternetGateway, err := client.PublicInternetGateways.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", publicInternetGateway.Data)
}
```

## List all Virtual Cross Connects

`GET /virtual_cross_connects`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.VirtualCrossConnects.List(context.TODO(), telnyx.VirtualCrossConnectListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Virtual Cross Connect

`POST /virtual_cross_connects`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  virtualCrossConnect, err := client.VirtualCrossConnects.New(context.TODO(), telnyx.VirtualCrossConnectNewParams{
    RegionCode: "ashburn-va",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", virtualCrossConnect.Data)
}
```

## Retrieve a Virtual Cross Connect

`GET /virtual_cross_connects/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  virtualCrossConnect, err := client.VirtualCrossConnects.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", virtualCrossConnect.Data)
}
```

## Update the Virtual Cross Connect

`PATCH /virtual_cross_connects/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  virtualCrossConnect, err := client.VirtualCrossConnects.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.VirtualCrossConnectUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", virtualCrossConnect.Data)
}
```

## Delete a Virtual Cross Connect

`DELETE /virtual_cross_connects/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  virtualCrossConnect, err := client.VirtualCrossConnects.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", virtualCrossConnect.Data)
}
```

## List Virtual Cross Connect Cloud Coverage

`GET /virtual_cross_connects/coverage`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.VirtualCrossConnectsCoverage.List(context.TODO(), telnyx.VirtualCrossConnectsCoverageListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List all Global IPs

`GET /global_ips`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.GlobalIPs.List(context.TODO(), telnyx.GlobalIPListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Global IP

`POST /global_ips`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIP, err := client.GlobalIPs.New(context.TODO(), telnyx.GlobalIPNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIP.Data)
}
```

## Retrieve a Global IP

`GET /global_ips/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIP, err := client.GlobalIPs.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIP.Data)
}
```

## Delete a Global IP

`DELETE /global_ips/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIP, err := client.GlobalIPs.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIP.Data)
}
```

## List all Global IP Allowed Ports

`GET /global_ip_allowed_ports`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAllowedPorts, err := client.GlobalIPAllowedPorts.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAllowedPorts.Data)
}
```

## Global IP Assignment Health Check Metrics

`GET /global_ip_assignment_health`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignmentHealth, err := client.GlobalIPAssignmentHealth.Get(context.TODO(), telnyx.GlobalIPAssignmentHealthGetParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignmentHealth.Data)
}
```

## List all Global IP assignments

`GET /global_ip_assignments`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.GlobalIPAssignments.List(context.TODO(), telnyx.GlobalIPAssignmentListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Global IP assignment

`POST /global_ip_assignments`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignment, err := client.GlobalIPAssignments.New(context.TODO(), telnyx.GlobalIPAssignmentNewParams{
    GlobalIPAssignment: telnyx.GlobalIPAssignmentParam{

    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignment.Data)
}
```

## Retrieve a Global IP

`GET /global_ip_assignments/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignment, err := client.GlobalIPAssignments.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignment.Data)
}
```

## Update a Global IP assignment

`PATCH /global_ip_assignments/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignment, err := client.GlobalIPAssignments.Update(
    context.TODO(),
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    telnyx.GlobalIPAssignmentUpdateParams{
      GlobalIPAssignmentUpdateRequest: telnyx.GlobalIPAssignmentUpdateParamsGlobalIPAssignmentUpdateRequest{
        GlobalIPAssignmentParam: telnyx.GlobalIPAssignmentParam{

        },
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignment.Data)
}
```

## Delete a Global IP assignment

`DELETE /global_ip_assignments/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignment, err := client.GlobalIPAssignments.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignment.Data)
}
```

## Global IP Assignment Usage Metrics

`GET /global_ip_assignments/usage`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPAssignmentsUsage, err := client.GlobalIPAssignmentsUsage.Get(context.TODO(), telnyx.GlobalIPAssignmentsUsageGetParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPAssignmentsUsage.Data)
}
```

## List all Global IP Health check types

`GET /global_ip_health_check_types`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPHealthCheckTypes, err := client.GlobalIPHealthCheckTypes.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPHealthCheckTypes.Data)
}
```

## List all Global IP health checks

`GET /global_ip_health_checks`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.GlobalIPHealthChecks.List(context.TODO(), telnyx.GlobalIPHealthCheckListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create a Global IP health check

`POST /global_ip_health_checks`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPHealthCheck, err := client.GlobalIPHealthChecks.New(context.TODO(), telnyx.GlobalIPHealthCheckNewParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPHealthCheck.Data)
}
```

## Retrieve a Global IP health check

`GET /global_ip_health_checks/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPHealthCheck, err := client.GlobalIPHealthChecks.Get(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPHealthCheck.Data)
}
```

## Delete a Global IP health check

`DELETE /global_ip_health_checks/{id}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPHealthCheck, err := client.GlobalIPHealthChecks.Delete(context.TODO(), "6a09cdc3-8948-47f0-aa62-74ac943d6c58")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPHealthCheck.Data)
}
```

## Global IP Latency Metrics

`GET /global_ip_latency`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPLatency, err := client.GlobalIPLatency.Get(context.TODO(), telnyx.GlobalIPLatencyGetParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPLatency.Data)
}
```

## List all Global IP Protocols

`GET /global_ip_protocols`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPProtocols, err := client.GlobalIPProtocols.List(context.TODO())
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPProtocols.Data)
}
```

## Global IP Usage Metrics

`GET /global_ip_usage`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  globalIPUsage, err := client.GlobalIPUsage.Get(context.TODO(), telnyx.GlobalIPUsageGetParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", globalIPUsage.Data)
}
```
