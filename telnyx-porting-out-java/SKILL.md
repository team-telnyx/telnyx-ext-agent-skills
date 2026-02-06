---
name: telnyx-porting-out-java
description: >-
  Manage port-out requests when numbers are being ported away from Telnyx. List,
  view, and update port-out status. This skill provides Java SDK examples.
metadata:
  author: telnyx
  product: porting-out
  language: java
---

# Telnyx Porting Out - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List portout requests

`GET /portouts`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.PortoutListPage;
import com.telnyx.sdk.models.portouts.PortoutListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortoutListPage page = client.portouts().list();
    }
}
```

## Get a portout request

`GET /portouts/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.PortoutRetrieveParams;
import com.telnyx.sdk.models.portouts.PortoutRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortoutRetrieveResponse portout = client.portouts().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List all comments for a portout request

`GET /portouts/{id}/comments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.comments.CommentListParams;
import com.telnyx.sdk.models.portouts.comments.CommentListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CommentListResponse comments = client.portouts().comments().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a comment on a portout request

`POST /portouts/{id}/comments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.comments.CommentCreateParams;
import com.telnyx.sdk.models.portouts.comments.CommentCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CommentCreateResponse comment = client.portouts().comments().create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List supporting documents on a portout request

`GET /portouts/{id}/supporting_documents`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.supportingdocuments.SupportingDocumentListParams;
import com.telnyx.sdk.models.portouts.supportingdocuments.SupportingDocumentListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SupportingDocumentListResponse supportingDocuments = client.portouts().supportingDocuments().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a list of supporting documents on a portout request

`POST /portouts/{id}/supporting_documents`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.supportingdocuments.SupportingDocumentCreateParams;
import com.telnyx.sdk.models.portouts.supportingdocuments.SupportingDocumentCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        SupportingDocumentCreateResponse supportingDocument = client.portouts().supportingDocuments().create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Update Status

`PATCH /portouts/{id}/{status}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.PortoutUpdateStatusParams;
import com.telnyx.sdk.models.portouts.PortoutUpdateStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortoutUpdateStatusParams params = PortoutUpdateStatusParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .status(PortoutUpdateStatusParams.Status.AUTHORIZED)
            .reason("I do not recognize this transaction")
            .build();
        PortoutUpdateStatusResponse response = client.portouts().updateStatus(params);
    }
}
```

## List all port-out events

`GET /portouts/events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.events.EventListPage;
import com.telnyx.sdk.models.portouts.events.EventListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        EventListPage page = client.portouts().events().list();
    }
}
```

## Show a port-out event

`GET /portouts/events/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.events.EventRetrieveParams;
import com.telnyx.sdk.models.portouts.events.EventRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        EventRetrieveResponse event = client.portouts().events().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Republish a port-out event

`POST /portouts/events/{id}/republish`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.events.EventRepublishParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.portouts().events().republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List eligible port-out rejection codes for a specific order

`GET /portouts/rejections/{portout_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.PortoutListRejectionCodesParams;
import com.telnyx.sdk.models.portouts.PortoutListRejectionCodesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortoutListRejectionCodesResponse response = client.portouts().listRejectionCodes("329d6658-8f93-405d-862f-648776e8afd7");
    }
}
```

## List port-out related reports

`GET /portouts/reports`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.reports.ReportListPage;
import com.telnyx.sdk.models.portouts.reports.ReportListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportListPage page = client.portouts().reports().list();
    }
}
```

## Create a port-out related report

`POST /portouts/reports`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.reports.ExportPortoutsCsvReport;
import com.telnyx.sdk.models.portouts.reports.ReportCreateParams;
import com.telnyx.sdk.models.portouts.reports.ReportCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportCreateParams params = ReportCreateParams.builder()
            .params(ExportPortoutsCsvReport.builder()
                .filters(ExportPortoutsCsvReport.Filters.builder().build())
                .build())
            .reportType(ReportCreateParams.ReportType.EXPORT_PORTOUTS_CSV)
            .build();
        ReportCreateResponse report = client.portouts().reports().create(params);
    }
}
```

## Retrieve a report

`GET /portouts/reports/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portouts.reports.ReportRetrieveParams;
import com.telnyx.sdk.models.portouts.reports.ReportRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportRetrieveResponse report = client.portouts().reports().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```
