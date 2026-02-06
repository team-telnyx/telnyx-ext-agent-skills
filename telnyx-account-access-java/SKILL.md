---
name: telnyx-account-access-java
description: >-
  Configure account addresses, authentication providers, IP access controls,
  billing groups, and integration secrets. This skill provides Java SDK
  examples.
metadata:
  author: telnyx
  product: account-access
  language: java
---

# Telnyx Account Access - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all addresses

`GET /addresses`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.AddressListPage;
import com.telnyx.sdk.models.addresses.AddressListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AddressListPage page = client.addresses().list();
    }
}
```

## Creates an address

`POST /addresses`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.AddressCreateParams;
import com.telnyx.sdk.models.addresses.AddressCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AddressCreateParams params = AddressCreateParams.builder()
            .businessName("Toy-O'Kon")
            .countryCode("US")
            .firstName("Alfred")
            .lastName("Foster")
            .locality("Austin")
            .streetAddress("600 Congress Avenue")
            .build();
        AddressCreateResponse address = client.addresses().create(params);
    }
}
```

## Retrieve an address

`GET /addresses/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.AddressRetrieveParams;
import com.telnyx.sdk.models.addresses.AddressRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AddressRetrieveResponse address = client.addresses().retrieve("id");
    }
}
```

## Deletes an address

`DELETE /addresses/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.AddressDeleteParams;
import com.telnyx.sdk.models.addresses.AddressDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AddressDeleteResponse address = client.addresses().delete("id");
    }
}
```

## Accepts this address suggestion as a new emergency address for Operator Connect and finishes the uploads of the numbers associated with it to Microsoft.

`POST /addresses/{id}/actions/accept_suggestions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.actions.ActionAcceptSuggestionsParams;
import com.telnyx.sdk.models.addresses.actions.ActionAcceptSuggestionsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionAcceptSuggestionsResponse response = client.addresses().actions().acceptSuggestions("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Validate an address

`POST /addresses/actions/validate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.addresses.actions.ActionValidateParams;
import com.telnyx.sdk.models.addresses.actions.ActionValidateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionValidateParams params = ActionValidateParams.builder()
            .countryCode("US")
            .postalCode("78701")
            .streetAddress("600 Congress Avenue")
            .build();
        ActionValidateResponse response = client.addresses().actions().validate(params);
    }
}
```

## List all SSO authentication providers

`GET /authentication_providers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderListPage;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AuthenticationProviderListPage page = client.authenticationProviders().list();
    }
}
```

## Creates an authentication provider

`POST /authentication_providers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderCreateParams;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderCreateResponse;
import com.telnyx.sdk.models.authenticationproviders.Settings;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AuthenticationProviderCreateParams params = AuthenticationProviderCreateParams.builder()
            .name("Okta")
            .settings(Settings.builder()
                .idpCertFingerprint("13:38:C7:BB:C9:FF:4A:70:38:3A:E3:D9:5C:CD:DB:2E:50:1E:80:A7")
                .idpEntityId("https://myorg.myidp.com/saml/metadata")
                .idpSsoTargetUrl("https://myorg.myidp.com/trust/saml2/http-post/sso")
                .build())
            .shortName("myorg")
            .build();
        AuthenticationProviderCreateResponse authenticationProvider = client.authenticationProviders().create(params);
    }
}
```

## Retrieve an authentication provider

`GET /authentication_providers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderRetrieveParams;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AuthenticationProviderRetrieveResponse authenticationProvider = client.authenticationProviders().retrieve("id");
    }
}
```

## Update an authentication provider

`PATCH /authentication_providers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderUpdateParams;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AuthenticationProviderUpdateResponse authenticationProvider = client.authenticationProviders().update("id");
    }
}
```

## Deletes an authentication provider

`DELETE /authentication_providers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderDeleteParams;
import com.telnyx.sdk.models.authenticationproviders.AuthenticationProviderDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AuthenticationProviderDeleteResponse authenticationProvider = client.authenticationProviders().delete("id");
    }
}
```

## List all billing groups

`GET /billing_groups`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.billinggroups.BillingGroupListPage;
import com.telnyx.sdk.models.billinggroups.BillingGroupListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BillingGroupListPage page = client.billingGroups().list();
    }
}
```

## Create a billing group

`POST /billing_groups`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.billinggroups.BillingGroupCreateParams;
import com.telnyx.sdk.models.billinggroups.BillingGroupCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BillingGroupCreateResponse billingGroup = client.billingGroups().create();
    }
}
```

## Get a billing group

`GET /billing_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.billinggroups.BillingGroupRetrieveParams;
import com.telnyx.sdk.models.billinggroups.BillingGroupRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BillingGroupRetrieveResponse billingGroup = client.billingGroups().retrieve("f5586561-8ff0-4291-a0ac-84fe544797bd");
    }
}
```

## Update a billing group

`PATCH /billing_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.billinggroups.BillingGroupUpdateParams;
import com.telnyx.sdk.models.billinggroups.BillingGroupUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BillingGroupUpdateResponse billingGroup = client.billingGroups().update("f5586561-8ff0-4291-a0ac-84fe544797bd");
    }
}
```

## Delete a billing group

`DELETE /billing_groups/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.billinggroups.BillingGroupDeleteParams;
import com.telnyx.sdk.models.billinggroups.BillingGroupDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BillingGroupDeleteResponse billingGroup = client.billingGroups().delete("f5586561-8ff0-4291-a0ac-84fe544797bd");
    }
}
```

## List integration secrets

`GET /integration_secrets`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.integrationsecrets.IntegrationSecretListPage;
import com.telnyx.sdk.models.integrationsecrets.IntegrationSecretListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        IntegrationSecretListPage page = client.integrationSecrets().list();
    }
}
```

## Create a secret

`POST /integration_secrets`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.integrationsecrets.IntegrationSecretCreateParams;
import com.telnyx.sdk.models.integrationsecrets.IntegrationSecretCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        IntegrationSecretCreateParams params = IntegrationSecretCreateParams.builder()
            .identifier("my_secret")
            .type(IntegrationSecretCreateParams.Type.BEARER)
            .build();
        IntegrationSecretCreateResponse integrationSecret = client.integrationSecrets().create(params);
    }
}
```

## Delete an integration secret

`DELETE /integration_secrets/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.integrationsecrets.IntegrationSecretDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.integrationSecrets().delete("id");
    }
}
```

## List all Access IP Addresses

`GET /access_ip_address`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressListPage;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpAddressListPage page = client.accessIpAddress().list();
    }
}
```

## Create new Access IP Address

`POST /access_ip_address`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressCreateParams;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpAddressCreateParams params = AccessIpAddressCreateParams.builder()
            .ipAddress("ip_address")
            .build();
        AccessIpAddressResponse accessIpAddressResponse = client.accessIpAddress().create(params);
    }
}
```

## Retrieve an access IP address

`GET /access_ip_address/{access_ip_address_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressResponse;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpAddressResponse accessIpAddressResponse = client.accessIpAddress().retrieve("access_ip_address_id");
    }
}
```

## Delete access IP address

`DELETE /access_ip_address/{access_ip_address_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressDeleteParams;
import com.telnyx.sdk.models.accessipaddress.AccessIpAddressResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpAddressResponse accessIpAddressResponse = client.accessIpAddress().delete("access_ip_address_id");
    }
}
```

## List all Access IP Ranges

`GET /access_ip_ranges`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipranges.AccessIpRangeListPage;
import com.telnyx.sdk.models.accessipranges.AccessIpRangeListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpRangeListPage page = client.accessIpRanges().list();
    }
}
```

## Create new Access IP Range

`POST /access_ip_ranges`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipranges.AccessIpRange;
import com.telnyx.sdk.models.accessipranges.AccessIpRangeCreateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpRangeCreateParams params = AccessIpRangeCreateParams.builder()
            .cidrBlock("cidr_block")
            .build();
        AccessIpRange accessIpRange = client.accessIpRanges().create(params);
    }
}
```

## Delete access IP ranges

`DELETE /access_ip_ranges/{access_ip_range_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.accessipranges.AccessIpRange;
import com.telnyx.sdk.models.accessipranges.AccessIpRangeDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AccessIpRange accessIpRange = client.accessIpRanges().delete("access_ip_range_id");
    }
}
```
