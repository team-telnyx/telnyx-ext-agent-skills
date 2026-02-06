---
name: telnyx-fax-java
description: >-
  Send and receive faxes programmatically. Manage fax applications and media.
  This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: fax
  language: java
---

# Telnyx Fax - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all Fax Applications

`GET /fax_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxapplications.FaxApplicationListPage;
import com.telnyx.sdk.models.faxapplications.FaxApplicationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxApplicationListPage page = client.faxApplications().list();
    }
}
```

## Creates a Fax Application

`POST /fax_applications`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxapplications.FaxApplicationCreateParams;
import com.telnyx.sdk.models.faxapplications.FaxApplicationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxApplicationCreateParams params = FaxApplicationCreateParams.builder()
            .applicationName("fax-router")
            .webhookEventUrl("https://example.com")
            .build();
        FaxApplicationCreateResponse faxApplication = client.faxApplications().create(params);
    }
}
```

## Retrieve a Fax Application

`GET /fax_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxapplications.FaxApplicationRetrieveParams;
import com.telnyx.sdk.models.faxapplications.FaxApplicationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxApplicationRetrieveResponse faxApplication = client.faxApplications().retrieve("1293384261075731499");
    }
}
```

## Update a Fax Application

`PATCH /fax_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxapplications.FaxApplicationUpdateParams;
import com.telnyx.sdk.models.faxapplications.FaxApplicationUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxApplicationUpdateParams params = FaxApplicationUpdateParams.builder()
            .id("1293384261075731499")
            .applicationName("fax-router")
            .webhookEventUrl("https://example.com")
            .build();
        FaxApplicationUpdateResponse faxApplication = client.faxApplications().update(params);
    }
}
```

## Deletes a Fax Application

`DELETE /fax_applications/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxapplications.FaxApplicationDeleteParams;
import com.telnyx.sdk.models.faxapplications.FaxApplicationDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxApplicationDeleteResponse faxApplication = client.faxApplications().delete("1293384261075731499");
    }
}
```

## View a list of faxes

`GET /faxes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.FaxListPage;
import com.telnyx.sdk.models.faxes.FaxListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxListPage page = client.faxes().list();
    }
}
```

## Send a fax

`POST /faxes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.FaxCreateParams;
import com.telnyx.sdk.models.faxes.FaxCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxCreateParams params = FaxCreateParams.builder()
            .connectionId("234423")
            .from("+13125790015")
            .to("+13127367276")
            .build();
        FaxCreateResponse fax = client.faxes().create(params);
    }
}
```

## View a fax

`GET /faxes/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.FaxRetrieveParams;
import com.telnyx.sdk.models.faxes.FaxRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        FaxRetrieveResponse fax = client.faxes().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete a fax

`DELETE /faxes/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.FaxDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.faxes().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Cancel a fax

`POST /faxes/{id}/actions/cancel`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.actions.ActionCancelParams;
import com.telnyx.sdk.models.faxes.actions.ActionCancelResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionCancelResponse response = client.faxes().actions().cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Refresh a fax

`POST /faxes/{id}/actions/refresh`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.faxes.actions.ActionRefreshParams;
import com.telnyx.sdk.models.faxes.actions.ActionRefreshResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRefreshResponse response = client.faxes().actions().refresh("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```
