---
name: telnyx-numbers-services-java
description: >-
  Configure voicemail, voice channels, and emergency (E911) services for your
  phone numbers. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: numbers-services
  language: java
---

# Telnyx Numbers Services - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List dynamic emergency addresses

`GET /dynamic_emergency_addresses`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressListPage;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyAddressListPage page = client.dynamicEmergencyAddresses().list();
    }
}
```

## Create a dynamic emergency address.

`POST /dynamic_emergency_addresses`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddress;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressCreateParams;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyAddress params = DynamicEmergencyAddress.builder()
            .administrativeArea("TX")
            .countryCode(DynamicEmergencyAddress.CountryCode.US)
            .houseNumber("600")
            .locality("Austin")
            .postalCode("78701")
            .streetName("Congress")
            .build();
        DynamicEmergencyAddressCreateResponse dynamicEmergencyAddress = client.dynamicEmergencyAddresses().create(params);
    }
}
```

## Get a dynamic emergency address

`GET /dynamic_emergency_addresses/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressRetrieveParams;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyAddressRetrieveResponse dynamicEmergencyAddress = client.dynamicEmergencyAddresses().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete a dynamic emergency address

`DELETE /dynamic_emergency_addresses/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressDeleteParams;
import com.telnyx.sdk.models.dynamicemergencyaddresses.DynamicEmergencyAddressDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyAddressDeleteResponse dynamicEmergencyAddress = client.dynamicEmergencyAddresses().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List dynamic emergency endpoints

`GET /dynamic_emergency_endpoints`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointListPage;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyEndpointListPage page = client.dynamicEmergencyEndpoints().list();
    }
}
```

## Create a dynamic emergency endpoint.

`POST /dynamic_emergency_endpoints`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpoint;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointCreateParams;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyEndpoint params = DynamicEmergencyEndpoint.builder()
            .callbackNumber("+13125550000")
            .callerName("Jane Doe Desk Phone")
            .dynamicEmergencyAddressId("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")
            .build();
        DynamicEmergencyEndpointCreateResponse dynamicEmergencyEndpoint = client.dynamicEmergencyEndpoints().create(params);
    }
}
```

## Get a dynamic emergency endpoint

`GET /dynamic_emergency_endpoints/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointRetrieveParams;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyEndpointRetrieveResponse dynamicEmergencyEndpoint = client.dynamicEmergencyEndpoints().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete a dynamic emergency endpoint

`DELETE /dynamic_emergency_endpoints/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointDeleteParams;
import com.telnyx.sdk.models.dynamicemergencyendpoints.DynamicEmergencyEndpointDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        DynamicEmergencyEndpointDeleteResponse dynamicEmergencyEndpoint = client.dynamicEmergencyEndpoints().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List your voice channels for non-US zones

`GET /channel_zones`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.channelzones.ChannelZoneListPage;
import com.telnyx.sdk.models.channelzones.ChannelZoneListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ChannelZoneListPage page = client.channelZones().list();
    }
}
```

## Update voice channels for non-US Zones

`PUT /channel_zones/{channel_zone_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.channelzones.ChannelZoneUpdateParams;
import com.telnyx.sdk.models.channelzones.ChannelZoneUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ChannelZoneUpdateParams params = ChannelZoneUpdateParams.builder()
            .channelZoneId("channel_zone_id")
            .channels(0L)
            .build();
        ChannelZoneUpdateResponse channelZone = client.channelZones().update(params);
    }
}
```

## List your voice channels for US Zone

`GET /inbound_channels`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.inboundchannels.InboundChannelListParams;
import com.telnyx.sdk.models.inboundchannels.InboundChannelListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        InboundChannelListResponse inboundChannels = client.inboundChannels().list();
    }
}
```

## Update voice channels for US Zone

`PATCH /inbound_channels`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.inboundchannels.InboundChannelUpdateParams;
import com.telnyx.sdk.models.inboundchannels.InboundChannelUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        InboundChannelUpdateParams params = InboundChannelUpdateParams.builder()
            .channels(7L)
            .build();
        InboundChannelUpdateResponse inboundChannel = client.inboundChannels().update(params);
    }
}
```

## List All Numbers using Channel Billing

`GET /list`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.list.ListRetrieveAllParams;
import com.telnyx.sdk.models.list.ListRetrieveAllResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ListRetrieveAllResponse response = client.list().retrieveAll();
    }
}
```

## List Numbers using Channel Billing for a specific Zone

`GET /list/{channel_zone_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.list.ListRetrieveByZoneParams;
import com.telnyx.sdk.models.list.ListRetrieveByZoneResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ListRetrieveByZoneResponse response = client.list().retrieveByZone("channel_zone_id");
    }
}
```

## Get voicemail

`GET /phone_numbers/{phone_number_id}/voicemail`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailRetrieveParams;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VoicemailRetrieveResponse voicemail = client.phoneNumbers().voicemail().retrieve("123455678900");
    }
}
```

## Create voicemail

`POST /phone_numbers/{phone_number_id}/voicemail`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailCreateParams;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailCreateResponse;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailRequest;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VoicemailCreateParams params = VoicemailCreateParams.builder()
            .phoneNumberId("123455678900")
            .voicemailRequest(VoicemailRequest.builder().build())
            .build();
        VoicemailCreateResponse voicemail = client.phoneNumbers().voicemail().create(params);
    }
}
```

## Update voicemail

`PATCH /phone_numbers/{phone_number_id}/voicemail`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailRequest;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailUpdateParams;
import com.telnyx.sdk.models.phonenumbers.voicemail.VoicemailUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VoicemailUpdateParams params = VoicemailUpdateParams.builder()
            .phoneNumberId("123455678900")
            .voicemailRequest(VoicemailRequest.builder().build())
            .build();
        VoicemailUpdateResponse voicemail = client.phoneNumbers().voicemail().update(params);
    }
}
```
