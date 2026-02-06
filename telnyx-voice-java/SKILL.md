---
name: telnyx-voice-java
description: >-
  Make and receive calls, transfer, bridge, and manage call lifecycle with Call
  Control. Includes application management and call events. This skill provides
  Java SDK examples.
metadata:
  author: telnyx
  product: voice
  language: java
---

# Telnyx Voice - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## Answer call

`POST /calls/{call_control_id}/actions/answer`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionAnswerParams;
import com.telnyx.sdk.models.calls.actions.ActionAnswerResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionAnswerResponse response = client.calls().actions().answer("call_control_id");
    }
}
```

## Bridge calls

`POST /calls/{call_control_id}/actions/bridge`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionBridgeParams;
import com.telnyx.sdk.models.calls.actions.ActionBridgeResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionBridgeParams params = ActionBridgeParams.builder()
            .callControlIdToBridge("call_control_id")
            .callControlId("v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg")
            .build();
        ActionBridgeResponse response = client.calls().actions().bridge(params);
    }
}
```

## Dial

`POST /calls`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.CallDialParams;
import com.telnyx.sdk.models.calls.CallDialResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallDialParams params = CallDialParams.builder()
            .connectionId("7267xxxxxxxxxxxxxx")
            .from("+18005550101")
            .to("+18005550100 or sip:username@sip.telnyx.com")
            .build();
        CallDialResponse response = client.calls().dial(params);
    }
}
```

## Hangup call

`POST /calls/{call_control_id}/actions/hangup`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionHangupParams;
import com.telnyx.sdk.models.calls.actions.ActionHangupResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionHangupResponse response = client.calls().actions().hangup("call_control_id");
    }
}
```

## Transfer call

`POST /calls/{call_control_id}/actions/transfer`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.calls.actions.ActionTransferParams;
import com.telnyx.sdk.models.calls.actions.ActionTransferResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionTransferParams params = ActionTransferParams.builder()
            .callControlId("call_control_id")
            .to("+18005550100 or sip:username@sip.telnyx.com")
            .build();
        ActionTransferResponse response = client.calls().actions().transfer(params);
    }
}
```

## List all active calls for given connection

`GET /connections/{connection_id}/active_calls`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.connections.ConnectionListActiveCallsPage;
import com.telnyx.sdk.models.connections.ConnectionListActiveCallsParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ConnectionListActiveCallsPage page = client.connections().listActiveCalls("1293384261075731461");
    }
}
```

## List call control applications

`GET /call_control_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationListPage;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallControlApplicationListPage page = client.callControlApplications().list();
    }
}
```

## Create a call control application

`POST /call_control_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationCreateParams;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallControlApplicationCreateParams params = CallControlApplicationCreateParams.builder()
            .applicationName("call-router")
            .webhookEventUrl("https://example.com")
            .build();
        CallControlApplicationCreateResponse callControlApplication = client.callControlApplications().create(params);
    }
}
```

## Retrieve a call control application

`GET /call_control_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationRetrieveParams;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallControlApplicationRetrieveResponse callControlApplication = client.callControlApplications().retrieve("id");
    }
}
```

## Update a call control application

`PATCH /call_control_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationUpdateParams;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallControlApplicationUpdateParams params = CallControlApplicationUpdateParams.builder()
            .id("id")
            .applicationName("call-router")
            .webhookEventUrl("https://example.com")
            .build();
        CallControlApplicationUpdateResponse callControlApplication = client.callControlApplications().update(params);
    }
}
```

## Delete a call control application

`DELETE /call_control_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationDeleteParams;
import com.telnyx.sdk.models.callcontrolapplications.CallControlApplicationDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallControlApplicationDeleteResponse callControlApplication = client.callControlApplications().delete("id");
    }
}
```

## List call events

`GET /call_events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.callevents.CallEventListPage;
import com.telnyx.sdk.models.callevents.CallEventListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CallEventListPage page = client.callEvents().list();
    }
}
```
