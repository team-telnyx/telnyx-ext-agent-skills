---
name: telnyx-account-management-java
description: >-
  Manage sub-accounts for reseller and enterprise scenarios. This skill provides
  Java SDK examples.
metadata:
  author: telnyx
  product: account-management
  language: java
---

# Telnyx Account Management - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Lists accounts managed by the current user.

`GET /managed_accounts`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountListPage;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountListPage page = client.managedAccounts().list();
    }
}
```

## Create a new managed account.

`POST /managed_accounts`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountCreateParams;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountCreateParams params = ManagedAccountCreateParams.builder()
            .businessName("Larry's Cat Food Inc")
            .build();
        ManagedAccountCreateResponse managedAccount = client.managedAccounts().create(params);
    }
}
```

## Retrieve a managed account

`GET /managed_accounts/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountRetrieveParams;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountRetrieveResponse managedAccount = client.managedAccounts().retrieve("id");
    }
}
```

## Update a managed account

`PATCH /managed_accounts/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountUpdateParams;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountUpdateResponse managedAccount = client.managedAccounts().update("id");
    }
}
```

## Disables a managed account

`POST /managed_accounts/{id}/actions/disable`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.actions.ActionDisableParams;
import com.telnyx.sdk.models.managedaccounts.actions.ActionDisableResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionDisableResponse response = client.managedAccounts().actions().disable("id");
    }
}
```

## Enables a managed account

`POST /managed_accounts/{id}/actions/enable`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.actions.ActionEnableParams;
import com.telnyx.sdk.models.managedaccounts.actions.ActionEnableResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionEnableResponse response = client.managedAccounts().actions().enable("id");
    }
}
```

## Update the amount of allocatable global outbound channels allocated to a specific managed account.

`PATCH /managed_accounts/{id}/update_global_channel_limit`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountUpdateGlobalChannelLimitParams;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountUpdateGlobalChannelLimitResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountUpdateGlobalChannelLimitResponse response = client.managedAccounts().updateGlobalChannelLimit("id");
    }
}
```

## Display information about allocatable global outbound channels for the current user.

`GET /managed_accounts/allocatable_global_outbound_channels`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountGetAllocatableGlobalOutboundChannelsParams;
import com.telnyx.sdk.models.managedaccounts.ManagedAccountGetAllocatableGlobalOutboundChannelsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ManagedAccountGetAllocatableGlobalOutboundChannelsResponse response = client.managedAccounts().getAllocatableGlobalOutboundChannels();
    }
}
```
