---
name: telnyx-networking-java
description: >-
  Configure private networks, WireGuard VPN gateways, internet gateways, and
  virtual cross connects. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: networking
  language: java
---

# Telnyx Networking - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all Regions

`GET /regions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.regions.RegionListParams;
import com.telnyx.sdk.models.regions.RegionListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RegionListResponse regions = client.regions().list();
    }
}
```

## List all Networks

`GET /networks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkListPage;
import com.telnyx.sdk.models.networks.NetworkListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkListPage page = client.networks().list();
    }
}
```

## Create a Network

`POST /networks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkCreate;
import com.telnyx.sdk.models.networks.NetworkCreateParams;
import com.telnyx.sdk.models.networks.NetworkCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkCreate params = NetworkCreate.builder()
            .name("test network")
            .build();
        NetworkCreateResponse network = client.networks().create(params);
    }
}
```

## Retrieve a Network

`GET /networks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkRetrieveParams;
import com.telnyx.sdk.models.networks.NetworkRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkRetrieveResponse network = client.networks().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update a Network

`PATCH /networks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkCreate;
import com.telnyx.sdk.models.networks.NetworkUpdateParams;
import com.telnyx.sdk.models.networks.NetworkUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkUpdateParams params = NetworkUpdateParams.builder()
            .networkId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .networkCreate(NetworkCreate.builder()
                .name("test network")
                .build())
            .build();
        NetworkUpdateResponse network = client.networks().update(params);
    }
}
```

## Delete a Network

`DELETE /networks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkDeleteParams;
import com.telnyx.sdk.models.networks.NetworkDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkDeleteResponse network = client.networks().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get Default Gateway status.

`GET /networks/{id}/default_gateway`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayRetrieveParams;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DefaultGatewayRetrieveResponse defaultGateway = client.networks().defaultGateway().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Create Default Gateway.

`POST /networks/{id}/default_gateway`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayCreateParams;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DefaultGatewayCreateResponse defaultGateway = client.networks().defaultGateway().create("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete Default Gateway.

`DELETE /networks/{id}/default_gateway`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayDeleteParams;
import com.telnyx.sdk.models.networks.defaultgateway.DefaultGatewayDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DefaultGatewayDeleteResponse defaultGateway = client.networks().defaultGateway().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all Interfaces for a Network.

`GET /networks/{id}/network_interfaces`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.networks.NetworkListInterfacesPage;
import com.telnyx.sdk.models.networks.NetworkListInterfacesParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        NetworkListInterfacesPage page = client.networks().listInterfaces("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all WireGuard Interfaces

`GET /wireguard_interfaces`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceListPage;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardInterfaceListPage page = client.wireguardInterfaces().list();
    }
}
```

## Create a WireGuard Interface

`POST /wireguard_interfaces`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceCreateParams;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardInterfaceCreateResponse wireguardInterface = client.wireguardInterfaces().create();
    }
}
```

## Retrieve a WireGuard Interfaces

`GET /wireguard_interfaces/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceRetrieveParams;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardInterfaceRetrieveResponse wireguardInterface = client.wireguardInterfaces().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a WireGuard Interface

`DELETE /wireguard_interfaces/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceDeleteParams;
import com.telnyx.sdk.models.wireguardinterfaces.WireguardInterfaceDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardInterfaceDeleteResponse wireguardInterface = client.wireguardInterfaces().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all WireGuard Peers

`GET /wireguard_peers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerListPage;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardPeerListPage page = client.wireguardPeers().list();
    }
}
```

## Create a WireGuard Peer

`POST /wireguard_peers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerCreateParams;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardPeerCreateParams params = WireguardPeerCreateParams.builder()
            .wireguardInterfaceId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        WireguardPeerCreateResponse wireguardPeer = client.wireguardPeers().create(params);
    }
}
```

## Retrieve the WireGuard Peer

`GET /wireguard_peers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerRetrieveParams;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardPeerRetrieveResponse wireguardPeer = client.wireguardPeers().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update the WireGuard Peer

`PATCH /wireguard_peers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerPatch;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerUpdateParams;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardPeerUpdateParams params = WireguardPeerUpdateParams.builder()
            .id("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .wireguardPeerPatch(WireguardPeerPatch.builder().build())
            .build();
        WireguardPeerUpdateResponse wireguardPeer = client.wireguardPeers().update(params);
    }
}
```

## Delete the WireGuard Peer

`DELETE /wireguard_peers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerDeleteParams;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WireguardPeerDeleteResponse wireguardPeer = client.wireguardPeers().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Retrieve Wireguard config template for Peer

`GET /wireguard_peers/{id}/config`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireguardpeers.WireguardPeerRetrieveConfigParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        String response = client.wireguardPeers().retrieveConfig("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get all Private Wireless Gateways

`GET /private_wireless_gateways`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayListPage;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PrivateWirelessGatewayListPage page = client.privateWirelessGateways().list();
    }
}
```

## Create a Private Wireless Gateway

`POST /private_wireless_gateways`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayCreateParams;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PrivateWirelessGatewayCreateParams params = PrivateWirelessGatewayCreateParams.builder()
            .name("My private wireless gateway")
            .networkId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        PrivateWirelessGatewayCreateResponse privateWirelessGateway = client.privateWirelessGateways().create(params);
    }
}
```

## Get a Private Wireless Gateway

`GET /private_wireless_gateways/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayRetrieveParams;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PrivateWirelessGatewayRetrieveResponse privateWirelessGateway = client.privateWirelessGateways().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Private Wireless Gateway

`DELETE /private_wireless_gateways/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayDeleteParams;
import com.telnyx.sdk.models.privatewirelessgateways.PrivateWirelessGatewayDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PrivateWirelessGatewayDeleteResponse privateWirelessGateway = client.privateWirelessGateways().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all Public Internet Gateways

`GET /public_internet_gateways`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayListPage;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PublicInternetGatewayListPage page = client.publicInternetGateways().list();
    }
}
```

## Create a Public Internet Gateway

`POST /public_internet_gateways`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayCreateParams;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PublicInternetGatewayCreateResponse publicInternetGateway = client.publicInternetGateways().create();
    }
}
```

## Retrieve a Public Internet Gateway

`GET /public_internet_gateways/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayRetrieveParams;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PublicInternetGatewayRetrieveResponse publicInternetGateway = client.publicInternetGateways().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Public Internet Gateway

`DELETE /public_internet_gateways/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayDeleteParams;
import com.telnyx.sdk.models.publicinternetgateways.PublicInternetGatewayDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PublicInternetGatewayDeleteResponse publicInternetGateway = client.publicInternetGateways().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all Virtual Cross Connects

`GET /virtual_cross_connects`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectListPage;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectListPage page = client.virtualCrossConnects().list();
    }
}
```

## Create a Virtual Cross Connect

`POST /virtual_cross_connects`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectCreateParams;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectCreateResponse virtualCrossConnect = client.virtualCrossConnects().create();
    }
}
```

## Retrieve a Virtual Cross Connect

`GET /virtual_cross_connects/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectRetrieveParams;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectRetrieveResponse virtualCrossConnect = client.virtualCrossConnects().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update the Virtual Cross Connect

`PATCH /virtual_cross_connects/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectUpdateParams;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectUpdateResponse virtualCrossConnect = client.virtualCrossConnects().update("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Virtual Cross Connect

`DELETE /virtual_cross_connects/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectDeleteParams;
import com.telnyx.sdk.models.virtualcrossconnects.VirtualCrossConnectDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectDeleteResponse virtualCrossConnect = client.virtualCrossConnects().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List Virtual Cross Connect Cloud Coverage

`GET /virtual_cross_connects/coverage`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.virtualcrossconnectscoverage.VirtualCrossConnectsCoverageListPage;
import com.telnyx.sdk.models.virtualcrossconnectscoverage.VirtualCrossConnectsCoverageListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VirtualCrossConnectsCoverageListPage page = client.virtualCrossConnectsCoverage().list();
    }
}
```

## List all Global IPs

`GET /global_ips`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalips.GlobalIpListPage;
import com.telnyx.sdk.models.globalips.GlobalIpListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpListPage page = client.globalIps().list();
    }
}
```

## Create a Global IP

`POST /global_ips`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalips.GlobalIpCreateParams;
import com.telnyx.sdk.models.globalips.GlobalIpCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpCreateResponse globalIp = client.globalIps().create();
    }
}
```

## Retrieve a Global IP

`GET /global_ips/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalips.GlobalIpRetrieveParams;
import com.telnyx.sdk.models.globalips.GlobalIpRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpRetrieveResponse globalIp = client.globalIps().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Global IP

`DELETE /global_ips/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalips.GlobalIpDeleteParams;
import com.telnyx.sdk.models.globalips.GlobalIpDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpDeleteResponse globalIp = client.globalIps().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List all Global IP Allowed Ports

`GET /global_ip_allowed_ports`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipallowedports.GlobalIpAllowedPortListParams;
import com.telnyx.sdk.models.globalipallowedports.GlobalIpAllowedPortListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAllowedPortListResponse globalIpAllowedPorts = client.globalIpAllowedPorts().list();
    }
}
```

## Global IP Assignment Health Check Metrics

`GET /global_ip_assignment_health`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignmenthealth.GlobalIpAssignmentHealthRetrieveParams;
import com.telnyx.sdk.models.globalipassignmenthealth.GlobalIpAssignmentHealthRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentHealthRetrieveResponse globalIpAssignmentHealth = client.globalIpAssignmentHealth().retrieve();
    }
}
```

## List all Global IP assignments

`GET /global_ip_assignments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentListPage;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentListPage page = client.globalIpAssignments().list();
    }
}
```

## Create a Global IP assignment

`POST /global_ip_assignments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignment;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentCreateParams;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignment params = GlobalIpAssignment.builder().build();
        GlobalIpAssignmentCreateResponse globalIpAssignment = client.globalIpAssignments().create(params);
    }
}
```

## Retrieve a Global IP

`GET /global_ip_assignments/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentRetrieveParams;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentRetrieveResponse globalIpAssignment = client.globalIpAssignments().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update a Global IP assignment

`PATCH /global_ip_assignments/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentUpdateParams;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentUpdateResponse globalIpAssignment = client.globalIpAssignments().update("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Global IP assignment

`DELETE /global_ip_assignments/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentDeleteParams;
import com.telnyx.sdk.models.globalipassignments.GlobalIpAssignmentDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentDeleteResponse globalIpAssignment = client.globalIpAssignments().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Global IP Assignment Usage Metrics

`GET /global_ip_assignments/usage`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipassignmentsusage.GlobalIpAssignmentsUsageRetrieveParams;
import com.telnyx.sdk.models.globalipassignmentsusage.GlobalIpAssignmentsUsageRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpAssignmentsUsageRetrieveResponse globalIpAssignmentsUsage = client.globalIpAssignmentsUsage().retrieve();
    }
}
```

## List all Global IP Health check types

`GET /global_ip_health_check_types`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliphealthchecktypes.GlobalIpHealthCheckTypeListParams;
import com.telnyx.sdk.models.globaliphealthchecktypes.GlobalIpHealthCheckTypeListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpHealthCheckTypeListResponse globalIpHealthCheckTypes = client.globalIpHealthCheckTypes().list();
    }
}
```

## List all Global IP health checks

`GET /global_ip_health_checks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckListPage;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpHealthCheckListPage page = client.globalIpHealthChecks().list();
    }
}
```

## Create a Global IP health check

`POST /global_ip_health_checks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckCreateParams;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpHealthCheckCreateResponse globalIpHealthCheck = client.globalIpHealthChecks().create();
    }
}
```

## Retrieve a Global IP health check

`GET /global_ip_health_checks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckRetrieveParams;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpHealthCheckRetrieveResponse globalIpHealthCheck = client.globalIpHealthChecks().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Global IP health check

`DELETE /global_ip_health_checks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckDeleteParams;
import com.telnyx.sdk.models.globaliphealthchecks.GlobalIpHealthCheckDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpHealthCheckDeleteResponse globalIpHealthCheck = client.globalIpHealthChecks().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Global IP Latency Metrics

`GET /global_ip_latency`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globaliplatency.GlobalIpLatencyRetrieveParams;
import com.telnyx.sdk.models.globaliplatency.GlobalIpLatencyRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpLatencyRetrieveResponse globalIpLatency = client.globalIpLatency().retrieve();
    }
}
```

## List all Global IP Protocols

`GET /global_ip_protocols`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipprotocols.GlobalIpProtocolListParams;
import com.telnyx.sdk.models.globalipprotocols.GlobalIpProtocolListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpProtocolListResponse globalIpProtocols = client.globalIpProtocols().list();
    }
}
```

## Global IP Usage Metrics

`GET /global_ip_usage`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.globalipusage.GlobalIpUsageRetrieveParams;
import com.telnyx.sdk.models.globalipusage.GlobalIpUsageRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        GlobalIpUsageRetrieveResponse globalIpUsage = client.globalIpUsage().retrieve();
    }
}
```
