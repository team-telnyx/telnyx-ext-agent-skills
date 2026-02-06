---
name: telnyx-iot-java
description: >-
  Manage IoT SIM cards, eSIMs, data plans, and wireless connectivity. Use when
  building IoT/M2M solutions. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: iot
  language: java
---

# Telnyx Iot - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Get all wireless regions

`GET /wireless/regions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wireless.WirelessRetrieveRegionsParams;
import com.telnyx.sdk.models.wireless.WirelessRetrieveRegionsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessRetrieveRegionsParams params = WirelessRetrieveRegionsParams.builder()
            .product("public_ips")
            .build();
        WirelessRetrieveRegionsResponse response = client.wireless().retrieveRegions(params);
    }
}
```

## Get all SIM cards

`GET /sim_cards`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardListPage;
import com.telnyx.sdk.models.simcards.SimCardListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardListPage page = client.simCards().list();
    }
}
```

## Get SIM card

`GET /sim_cards/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardRetrieveParams;
import com.telnyx.sdk.models.simcards.SimCardRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardRetrieveResponse simCard = client.simCards().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update a SIM card

`PATCH /sim_cards/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCard;
import com.telnyx.sdk.models.simcards.SimCardUpdateParams;
import com.telnyx.sdk.models.simcards.SimCardUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardUpdateParams params = SimCardUpdateParams.builder()
            .simCardId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .simCard(SimCard.builder().build())
            .build();
        SimCardUpdateResponse simCard = client.simCards().update(params);
    }
}
```

## Deletes a SIM card

`DELETE /sim_cards/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardDeleteParams;
import com.telnyx.sdk.models.simcards.SimCardDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDeleteResponse simCard = client.simCards().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get activation code for an eSIM

`GET /sim_cards/{id}/activation_code`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardGetActivationCodeParams;
import com.telnyx.sdk.models.simcards.SimCardGetActivationCodeResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGetActivationCodeResponse response = client.simCards().getActivationCode("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get SIM card device details

`GET /sim_cards/{id}/device_details`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardGetDeviceDetailsParams;
import com.telnyx.sdk.models.simcards.SimCardGetDeviceDetailsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGetDeviceDetailsResponse response = client.simCards().getDeviceDetails("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get SIM card public IP definition

`GET /sim_cards/{id}/public_ip`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardGetPublicIpParams;
import com.telnyx.sdk.models.simcards.SimCardGetPublicIpResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGetPublicIpResponse response = client.simCards().getPublicIp("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List wireless connectivity logs

`GET /sim_cards/{id}/wireless_connectivity_logs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.SimCardListWirelessConnectivityLogsPage;
import com.telnyx.sdk.models.simcards.SimCardListWirelessConnectivityLogsParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardListWirelessConnectivityLogsPage page = client.simCards().listWirelessConnectivityLogs("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request a SIM card disable

`POST /sim_cards/{id}/actions/disable`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionDisableParams;
import com.telnyx.sdk.models.simcards.actions.ActionDisableResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionDisableResponse response = client.simCards().actions().disable("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request a SIM card enable

`POST /sim_cards/{id}/actions/enable`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionEnableParams;
import com.telnyx.sdk.models.simcards.actions.ActionEnableResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionEnableResponse response = client.simCards().actions().enable("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request removing a SIM card public IP

`POST /sim_cards/{id}/actions/remove_public_ip`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionRemovePublicIpParams;
import com.telnyx.sdk.models.simcards.actions.ActionRemovePublicIpResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRemovePublicIpResponse response = client.simCards().actions().removePublicIp("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request setting a SIM card public IP

`POST /sim_cards/{id}/actions/set_public_ip`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionSetPublicIpParams;
import com.telnyx.sdk.models.simcards.actions.ActionSetPublicIpResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSetPublicIpResponse response = client.simCards().actions().setPublicIp("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request setting a SIM card to standby

`POST /sim_cards/{id}/actions/set_standby`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionSetStandbyParams;
import com.telnyx.sdk.models.simcards.actions.ActionSetStandbyResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSetStandbyResponse response = client.simCards().actions().setStandby("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request bulk setting SIM card public IPs.

`POST /sim_cards/actions/bulk_set_public_ips`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionBulkSetPublicIpsParams;
import com.telnyx.sdk.models.simcards.actions.ActionBulkSetPublicIpsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionBulkSetPublicIpsParams params = ActionBulkSetPublicIpsParams.builder()
            .addSimCardId("6b14e151-8493-4fa1-8664-1cc4e6d14158")
            .build();
        ActionBulkSetPublicIpsResponse response = client.simCards().actions().bulkSetPublicIps(params);
    }
}
```

## Validate SIM cards registration codes

`POST /sim_cards/actions/validate_registration_codes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionValidateRegistrationCodesParams;
import com.telnyx.sdk.models.simcards.actions.ActionValidateRegistrationCodesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionValidateRegistrationCodesResponse response = client.simCards().actions().validateRegistrationCodes();
    }
}
```

## List SIM card actions

`GET /sim_card_actions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionListPage;
import com.telnyx.sdk.models.simcards.actions.ActionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionListPage page = client.simCards().actions().list();
    }
}
```

## Get SIM card action details

`GET /sim_card_actions/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcards.actions.ActionRetrieveParams;
import com.telnyx.sdk.models.simcards.actions.ActionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRetrieveResponse action = client.simCards().actions().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## List bulk SIM card actions

`GET /bulk_sim_card_actions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.bulksimcardactions.BulkSimCardActionListPage;
import com.telnyx.sdk.models.bulksimcardactions.BulkSimCardActionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BulkSimCardActionListPage page = client.bulkSimCardActions().list();
    }
}
```

## Get bulk SIM card action details

`GET /bulk_sim_card_actions/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.bulksimcardactions.BulkSimCardActionRetrieveParams;
import com.telnyx.sdk.models.bulksimcardactions.BulkSimCardActionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BulkSimCardActionRetrieveResponse bulkSimCardAction = client.bulkSimCardActions().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get all SIM card groups

`GET /sim_card_groups`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupListPage;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGroupListPage page = client.simCardGroups().list();
    }
}
```

## Create a SIM card group

`POST /sim_card_groups`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupCreateParams;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGroupCreateParams params = SimCardGroupCreateParams.builder()
            .name("My Test Group")
            .build();
        SimCardGroupCreateResponse simCardGroup = client.simCardGroups().create(params);
    }
}
```

## Get SIM card group

`GET /sim_card_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupRetrieveParams;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGroupRetrieveResponse simCardGroup = client.simCardGroups().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Update a SIM card group

`PATCH /sim_card_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupUpdateParams;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGroupUpdateResponse simCardGroup = client.simCardGroups().update("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a SIM card group

`DELETE /sim_card_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupDeleteParams;
import com.telnyx.sdk.models.simcardgroups.SimCardGroupDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardGroupDeleteResponse simCardGroup = client.simCardGroups().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request Private Wireless Gateway removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_private_wireless_gateway`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRemovePrivateWirelessGatewayParams;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRemovePrivateWirelessGatewayResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRemovePrivateWirelessGatewayResponse response = client.simCardGroups().actions().removePrivateWirelessGateway("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request Wireless Blocklist removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_wireless_blocklist`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRemoveWirelessBlocklistParams;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRemoveWirelessBlocklistResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRemoveWirelessBlocklistResponse response = client.simCardGroups().actions().removeWirelessBlocklist("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Request Private Wireless Gateway assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_private_wireless_gateway`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionSetPrivateWirelessGatewayParams;
import com.telnyx.sdk.models.simcardgroups.actions.ActionSetPrivateWirelessGatewayResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSetPrivateWirelessGatewayParams params = ActionSetPrivateWirelessGatewayParams.builder()
            .id("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .privateWirelessGatewayId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        ActionSetPrivateWirelessGatewayResponse response = client.simCardGroups().actions().setPrivateWirelessGateway(params);
    }
}
```

## Request Wireless Blocklist assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_wireless_blocklist`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionSetWirelessBlocklistParams;
import com.telnyx.sdk.models.simcardgroups.actions.ActionSetWirelessBlocklistResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionSetWirelessBlocklistParams params = ActionSetWirelessBlocklistParams.builder()
            .id("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .wirelessBlocklistId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .build();
        ActionSetWirelessBlocklistResponse response = client.simCardGroups().actions().setWirelessBlocklist(params);
    }
}
```

## List SIM card group actions

`GET /sim_card_group_actions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionListPage;
import com.telnyx.sdk.models.simcardgroups.actions.ActionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionListPage page = client.simCardGroups().actions().list();
    }
}
```

## Get SIM card group action details

`GET /sim_card_group_actions/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRetrieveParams;
import com.telnyx.sdk.models.simcardgroups.actions.ActionRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRetrieveResponse action = client.simCardGroups().actions().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get all SIM card orders

`GET /sim_card_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardorders.SimCardOrderListPage;
import com.telnyx.sdk.models.simcardorders.SimCardOrderListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardOrderListPage page = client.simCardOrders().list();
    }
}
```

## Create a SIM card order

`POST /sim_card_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardorders.SimCardOrderCreateParams;
import com.telnyx.sdk.models.simcardorders.SimCardOrderCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardOrderCreateParams params = SimCardOrderCreateParams.builder()
            .addressId("1293384261075731499")
            .quantity(23L)
            .build();
        SimCardOrderCreateResponse simCardOrder = client.simCardOrders().create(params);
    }
}
```

## Get a single SIM card order

`GET /sim_card_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardorders.SimCardOrderRetrieveParams;
import com.telnyx.sdk.models.simcardorders.SimCardOrderRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardOrderRetrieveResponse simCardOrder = client.simCardOrders().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Preview SIM card orders

`POST /sim_card_order_preview`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcardorderpreview.SimCardOrderPreviewPreviewParams;
import com.telnyx.sdk.models.simcardorderpreview.SimCardOrderPreviewPreviewResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardOrderPreviewPreviewParams params = SimCardOrderPreviewPreviewParams.builder()
            .addressId("1293384261075731499")
            .quantity(21L)
            .build();
        SimCardOrderPreviewPreviewResponse response = client.simCardOrderPreview().preview(params);
    }
}
```

## List SIM card data usage notifications

`GET /sim_card_data_usage_notifications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationListPage;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDataUsageNotificationListPage page = client.simCardDataUsageNotifications().list();
    }
}
```

## Create a new SIM card data usage notification

`POST /sim_card_data_usage_notifications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationCreateParams;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDataUsageNotificationCreateParams params = SimCardDataUsageNotificationCreateParams.builder()
            .simCardId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .threshold(SimCardDataUsageNotificationCreateParams.Threshold.builder().build())
            .build();
        SimCardDataUsageNotificationCreateResponse simCardDataUsageNotification = client.simCardDataUsageNotifications().create(params);
    }
}
```

## Get a single SIM card data usage notification

`GET /sim_card_data_usage_notifications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationRetrieveParams;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDataUsageNotificationRetrieveResponse simCardDataUsageNotification = client.simCardDataUsageNotifications().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Updates information for a SIM Card Data Usage Notification

`PATCH /sim_card_data_usage_notifications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotification;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationUpdateParams;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDataUsageNotificationUpdateParams params = SimCardDataUsageNotificationUpdateParams.builder()
            .simCardDataUsageNotificationId("6a09cdc3-8948-47f0-aa62-74ac943d6c58")
            .simCardDataUsageNotification(SimCardDataUsageNotification.builder().build())
            .build();
        SimCardDataUsageNotificationUpdateResponse simCardDataUsageNotification = client.simCardDataUsageNotifications().update(params);
    }
}
```

## Delete SIM card data usage notifications

`DELETE /sim_card_data_usage_notifications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationDeleteParams;
import com.telnyx.sdk.models.simcarddatausagenotifications.SimCardDataUsageNotificationDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SimCardDataUsageNotificationDeleteResponse simCardDataUsageNotification = client.simCardDataUsageNotifications().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Purchase eSIMs

`POST /actions/purchase/esims`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.actions.purchase.PurchaseCreateParams;
import com.telnyx.sdk.models.actions.purchase.PurchaseCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PurchaseCreateParams params = PurchaseCreateParams.builder()
            .amount(10L)
            .build();
        PurchaseCreateResponse purchase = client.actions().purchase().create(params);
    }
}
```

## Register SIM cards

`POST /actions/register/sim_cards`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.actions.register.RegisterCreateParams;
import com.telnyx.sdk.models.actions.register.RegisterCreateResponse;
import java.util.List;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RegisterCreateParams params = RegisterCreateParams.builder()
            .registrationCodes(List.of(
              "0000000001",
              "0000000002",
              "0000000003"
            ))
            .build();
        RegisterCreateResponse register = client.actions().register().create(params);
    }
}
```

## List OTA updates

`GET /ota_updates`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.otaupdates.OtaUpdateListPage;
import com.telnyx.sdk.models.otaupdates.OtaUpdateListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        OtaUpdateListPage page = client.otaUpdates().list();
    }
}
```

## Get OTA update

`GET /ota_updates/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.otaupdates.OtaUpdateRetrieveParams;
import com.telnyx.sdk.models.otaupdates.OtaUpdateRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        OtaUpdateRetrieveResponse otaUpdate = client.otaUpdates().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
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

## Get all Wireless Blocklists

`GET /wireless_blocklists`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistListPage;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistListPage page = client.wirelessBlocklists().list();
    }
}
```

## Create a Wireless Blocklist

`POST /wireless_blocklists`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistCreateParams;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistCreateParams params = WirelessBlocklistCreateParams.builder()
            .name("My Wireless Blocklist")
            .type(WirelessBlocklistCreateParams.Type.COUNTRY)
            .addValue("CA")
            .addValue("US")
            .build();
        WirelessBlocklistCreateResponse wirelessBlocklist = client.wirelessBlocklists().create(params);
    }
}
```

## Update a Wireless Blocklist

`PATCH /wireless_blocklists`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistUpdateParams;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistUpdateResponse wirelessBlocklist = client.wirelessBlocklists().update();
    }
}
```

## Get a Wireless Blocklist

`GET /wireless_blocklists/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistRetrieveParams;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistRetrieveResponse wirelessBlocklist = client.wirelessBlocklists().retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Delete a Wireless Blocklist

`DELETE /wireless_blocklists/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistDeleteParams;
import com.telnyx.sdk.models.wirelessblocklists.WirelessBlocklistDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistDeleteResponse wirelessBlocklist = client.wirelessBlocklists().delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58");
    }
}
```

## Get all possible wireless blocklist values

`GET /wireless_blocklist_values`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.wirelessblocklistvalues.WirelessBlocklistValueListParams;
import com.telnyx.sdk.models.wirelessblocklistvalues.WirelessBlocklistValueListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        WirelessBlocklistValueListParams params = WirelessBlocklistValueListParams.builder()
            .type(WirelessBlocklistValueListParams.Type.COUNTRY)
            .build();
        WirelessBlocklistValueListResponse wirelessBlocklistValues = client.wirelessBlocklistValues().list(params);
    }
}
```
