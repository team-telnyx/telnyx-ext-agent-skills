---
name: telnyx-porting-in-java
description: >-
  Port phone numbers into Telnyx. Check portability, create port orders, upload
  LOA documents, and track porting status. This skill provides Java SDK
  examples.
metadata:
  author: telnyx
  product: porting-in
  language: java
---

# Telnyx Porting In - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List all porting events

`GET /porting/events`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.events.EventListPage;
import com.telnyx.sdk.models.porting.events.EventListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        EventListPage page = client.porting().events().list();
    }
}
```

## Show a porting event

`GET /porting/events/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.events.EventRetrieveParams;
import com.telnyx.sdk.models.porting.events.EventRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        EventRetrieveResponse event = client.porting().events().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Republish a porting event

`POST /porting/events/{id}/republish`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.events.EventRepublishParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.porting().events().republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Preview the LOA configuration parameters

`POST /porting/loa_configuration_preview`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.http.HttpResponse;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationPreview0Params;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LoaConfigurationPreview0Params params = LoaConfigurationPreview0Params.builder()
            .address(LoaConfigurationPreview0Params.Address.builder()
                .city("Austin")
                .countryCode("US")
                .state("TX")
                .streetAddress("600 Congress Avenue")
                .zipCode("78701")
                .build())
            .companyName("Telnyx")
            .contact(LoaConfigurationPreview0Params.Contact.builder()
                .email("testing@telnyx.com")
                .phoneNumber("+12003270001")
                .build())
            .logo(LoaConfigurationPreview0Params.Logo.builder()
                .documentId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
                .build())
            .name("My LOA Configuration")
            .build();
        HttpResponse response = client.porting().loaConfigurations().preview0(params);
    }
}
```

## List LOA configurations

`GET /porting/loa_configurations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationListPage;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LoaConfigurationListPage page = client.porting().loaConfigurations().list();
    }
}
```

## Create a LOA configuration

`POST /porting/loa_configurations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationCreateParams;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LoaConfigurationCreateParams params = LoaConfigurationCreateParams.builder()
            .address(LoaConfigurationCreateParams.Address.builder()
                .city("Austin")
                .countryCode("US")
                .state("TX")
                .streetAddress("600 Congress Avenue")
                .zipCode("78701")
                .build())
            .companyName("Telnyx")
            .contact(LoaConfigurationCreateParams.Contact.builder()
                .email("testing@telnyx.com")
                .phoneNumber("+12003270001")
                .build())
            .logo(LoaConfigurationCreateParams.Logo.builder()
                .documentId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
                .build())
            .name("My LOA Configuration")
            .build();
        LoaConfigurationCreateResponse loaConfiguration = client.porting().loaConfigurations().create(params);
    }
}
```

## Retrieve a LOA configuration

`GET /porting/loa_configurations/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationRetrieveParams;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LoaConfigurationRetrieveResponse loaConfiguration = client.porting().loaConfigurations().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Update a LOA configuration

`PATCH /porting/loa_configurations/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationUpdateParams;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        LoaConfigurationUpdateParams params = LoaConfigurationUpdateParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .address(LoaConfigurationUpdateParams.Address.builder()
                .city("Austin")
                .countryCode("US")
                .state("TX")
                .streetAddress("600 Congress Avenue")
                .zipCode("78701")
                .build())
            .companyName("Telnyx")
            .contact(LoaConfigurationUpdateParams.Contact.builder()
                .email("testing@telnyx.com")
                .phoneNumber("+12003270001")
                .build())
            .logo(LoaConfigurationUpdateParams.Logo.builder()
                .documentId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
                .build())
            .name("My LOA Configuration")
            .build();
        LoaConfigurationUpdateResponse loaConfiguration = client.porting().loaConfigurations().update(params);
    }
}
```

## Delete a LOA configuration

`DELETE /porting/loa_configurations/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.porting().loaConfigurations().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Preview a LOA configuration

`GET /porting/loa_configurations/{id}/preview`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.http.HttpResponse;
import com.telnyx.sdk.models.porting.loaconfigurations.LoaConfigurationPreview1Params;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        HttpResponse response = client.porting().loaConfigurations().preview1("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List all porting orders

`GET /porting_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderListPage;
import com.telnyx.sdk.models.portingorders.PortingOrderListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderListPage page = client.portingOrders().list();
    }
}
```

## Create a porting order

`POST /porting_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderCreateParams;
import com.telnyx.sdk.models.portingorders.PortingOrderCreateResponse;
import java.util.List;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderCreateParams params = PortingOrderCreateParams.builder()
            .phoneNumbers(List.of(
              "+13035550000",
              "+13035550001",
              "+13035550002"
            ))
            .build();
        PortingOrderCreateResponse portingOrder = client.portingOrders().create(params);
    }
}
```

## Retrieve a porting order

`GET /porting_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveParams;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderRetrieveResponse portingOrder = client.portingOrders().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Edit a porting order

`PATCH /porting_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderUpdateParams;
import com.telnyx.sdk.models.portingorders.PortingOrderUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderUpdateResponse portingOrder = client.portingOrders().update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete a porting order

`DELETE /porting_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.portingOrders().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Activate every number in a porting order asynchronously.

`POST /porting_orders/{id}/actions/activate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actions.ActionActivateParams;
import com.telnyx.sdk.models.portingorders.actions.ActionActivateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionActivateResponse response = client.portingOrders().actions().activate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Cancel a porting order

`POST /porting_orders/{id}/actions/cancel`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actions.ActionCancelParams;
import com.telnyx.sdk.models.portingorders.actions.ActionCancelResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionCancelResponse response = client.portingOrders().actions().cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Submit a porting order.

`POST /porting_orders/{id}/actions/confirm`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actions.ActionConfirmParams;
import com.telnyx.sdk.models.portingorders.actions.ActionConfirmResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionConfirmResponse response = client.portingOrders().actions().confirm("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Share a porting order

`POST /porting_orders/{id}/actions/share`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actions.ActionShareParams;
import com.telnyx.sdk.models.portingorders.actions.ActionShareResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionShareResponse response = client.portingOrders().actions().share("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List all porting activation jobs

`GET /porting_orders/{id}/activation_jobs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobListPage;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActivationJobListPage page = client.portingOrders().activationJobs().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Retrieve a porting activation job

`GET /porting_orders/{id}/activation_jobs/{activationJobId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobRetrieveParams;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActivationJobRetrieveParams params = ActivationJobRetrieveParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .activationJobId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        ActivationJobRetrieveResponse activationJob = client.portingOrders().activationJobs().retrieve(params);
    }
}
```

## Update a porting activation job

`PATCH /porting_orders/{id}/activation_jobs/{activationJobId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobUpdateParams;
import com.telnyx.sdk.models.portingorders.activationjobs.ActivationJobUpdateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActivationJobUpdateParams params = ActivationJobUpdateParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .activationJobId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        ActivationJobUpdateResponse activationJob = client.portingOrders().activationJobs().update(params);
    }
}
```

## List additional documents

`GET /porting_orders/{id}/additional_documents`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.additionaldocuments.AdditionalDocumentListPage;
import com.telnyx.sdk.models.portingorders.additionaldocuments.AdditionalDocumentListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AdditionalDocumentListPage page = client.portingOrders().additionalDocuments().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a list of additional documents

`POST /porting_orders/{id}/additional_documents`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.additionaldocuments.AdditionalDocumentCreateParams;
import com.telnyx.sdk.models.portingorders.additionaldocuments.AdditionalDocumentCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AdditionalDocumentCreateResponse additionalDocument = client.portingOrders().additionalDocuments().create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Delete an additional document

`DELETE /porting_orders/{id}/additional_documents/{additional_document_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.additionaldocuments.AdditionalDocumentDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AdditionalDocumentDeleteParams params = AdditionalDocumentDeleteParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .additionalDocumentId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        client.portingOrders().additionalDocuments().delete(params);
    }
}
```

## List allowed FOC dates

`GET /porting_orders/{id}/allowed_foc_windows`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveAllowedFocWindowsParams;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveAllowedFocWindowsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderRetrieveAllowedFocWindowsResponse response = client.portingOrders().retrieveAllowedFocWindows("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List all comments of a porting order

`GET /porting_orders/{id}/comments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.comments.CommentListPage;
import com.telnyx.sdk.models.portingorders.comments.CommentListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CommentListPage page = client.portingOrders().comments().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a comment for a porting order

`POST /porting_orders/{id}/comments`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.comments.CommentCreateParams;
import com.telnyx.sdk.models.portingorders.comments.CommentCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CommentCreateResponse comment = client.portingOrders().comments().create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Download a porting order loa template

`GET /porting_orders/{id}/loa_template`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.core.http.HttpResponse;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveLoaTemplateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        HttpResponse response = client.portingOrders().retrieveLoaTemplate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List porting order requirements

`GET /porting_orders/{id}/requirements`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveRequirementsPage;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveRequirementsParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderRetrieveRequirementsPage page = client.portingOrders().retrieveRequirements("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Retrieve the associated V1 sub_request_id and port_request_id

`GET /porting_orders/{id}/sub_request`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveSubRequestParams;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveSubRequestResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderRetrieveSubRequestResponse response = client.portingOrders().retrieveSubRequest("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List verification codes

`GET /porting_orders/{id}/verification_codes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.verificationcodes.VerificationCodeListPage;
import com.telnyx.sdk.models.portingorders.verificationcodes.VerificationCodeListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VerificationCodeListPage page = client.portingOrders().verificationCodes().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Send the verification codes

`POST /porting_orders/{id}/verification_codes/send`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.verificationcodes.VerificationCodeSendParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.portingOrders().verificationCodes().send("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Verify the verification code for a list of phone numbers

`POST /porting_orders/{id}/verification_codes/verify`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.verificationcodes.VerificationCodeVerifyParams;
import com.telnyx.sdk.models.portingorders.verificationcodes.VerificationCodeVerifyResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VerificationCodeVerifyResponse response = client.portingOrders().verificationCodes().verify("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List action requirements for a porting order

`GET /porting_orders/{porting_order_id}/action_requirements`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actionrequirements.ActionRequirementListPage;
import com.telnyx.sdk.models.portingorders.actionrequirements.ActionRequirementListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRequirementListPage page = client.portingOrders().actionRequirements().list("porting_order_id");
    }
}
```

## Initiate an action requirement

`POST /porting_orders/{porting_order_id}/action_requirements/{id}/initiate`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.actionrequirements.ActionRequirementInitiateParams;
import com.telnyx.sdk.models.portingorders.actionrequirements.ActionRequirementInitiateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionRequirementInitiateParams params = ActionRequirementInitiateParams.builder()
            .portingOrderId("porting_order_id")
            .id("id")
            .params(ActionRequirementInitiateParams.Params.builder()
                .firstName("John")
                .lastName("Doe")
                .build())
            .build();
        ActionRequirementInitiateResponse response = client.portingOrders().actionRequirements().initiate(params);
    }
}
```

## List all associated phone numbers

`GET /porting_orders/{porting_order_id}/associated_phone_numbers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberListPage;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssociatedPhoneNumberListPage page = client.portingOrders().associatedPhoneNumbers().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create an associated phone number

`POST /porting_orders/{porting_order_id}/associated_phone_numbers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberCreateParams;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssociatedPhoneNumberCreateParams params = AssociatedPhoneNumberCreateParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .action(AssociatedPhoneNumberCreateParams.Action.KEEP)
            .phoneNumberRange(AssociatedPhoneNumberCreateParams.PhoneNumberRange.builder().build())
            .build();
        AssociatedPhoneNumberCreateResponse associatedPhoneNumber = client.portingOrders().associatedPhoneNumbers().create(params);
    }
}
```

## Delete an associated phone number

`DELETE /porting_orders/{porting_order_id}/associated_phone_numbers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberDeleteParams;
import com.telnyx.sdk.models.portingorders.associatedphonenumbers.AssociatedPhoneNumberDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AssociatedPhoneNumberDeleteParams params = AssociatedPhoneNumberDeleteParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        AssociatedPhoneNumberDeleteResponse associatedPhoneNumber = client.portingOrders().associatedPhoneNumbers().delete(params);
    }
}
```

## List all phone number blocks

`GET /porting_orders/{porting_order_id}/phone_number_blocks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockListPage;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberBlockListPage page = client.portingOrders().phoneNumberBlocks().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a phone number block

`POST /porting_orders/{porting_order_id}/phone_number_blocks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockCreateParams;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberBlockCreateParams params = PhoneNumberBlockCreateParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .addActivationRange(PhoneNumberBlockCreateParams.ActivationRange.builder()
                .endAt("+4930244999910")
                .startAt("+4930244999901")
                .build())
            .phoneNumberRange(PhoneNumberBlockCreateParams.PhoneNumberRange.builder()
                .endAt("+4930244999910")
                .startAt("+4930244999901")
                .build())
            .build();
        PhoneNumberBlockCreateResponse phoneNumberBlock = client.portingOrders().phoneNumberBlocks().create(params);
    }
}
```

## Delete a phone number block

`DELETE /porting_orders/{porting_order_id}/phone_number_blocks/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockDeleteParams;
import com.telnyx.sdk.models.portingorders.phonenumberblocks.PhoneNumberBlockDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberBlockDeleteParams params = PhoneNumberBlockDeleteParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        PhoneNumberBlockDeleteResponse phoneNumberBlock = client.portingOrders().phoneNumberBlocks().delete(params);
    }
}
```

## List all phone number extensions

`GET /porting_orders/{porting_order_id}/phone_number_extensions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionListPage;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberExtensionListPage page = client.portingOrders().phoneNumberExtensions().list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Create a phone number extension

`POST /porting_orders/{porting_order_id}/phone_number_extensions`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionCreateParams;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberExtensionCreateParams params = PhoneNumberExtensionCreateParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .addActivationRange(PhoneNumberExtensionCreateParams.ActivationRange.builder()
                .endAt(10L)
                .startAt(1L)
                .build())
            .extensionRange(PhoneNumberExtensionCreateParams.ExtensionRange.builder()
                .endAt(10L)
                .startAt(1L)
                .build())
            .portingPhoneNumberId("f24151b6-3389-41d3-8747-7dd8c681e5e2")
            .build();
        PhoneNumberExtensionCreateResponse phoneNumberExtension = client.portingOrders().phoneNumberExtensions().create(params);
    }
}
```

## Delete a phone number extension

`DELETE /porting_orders/{porting_order_id}/phone_number_extensions/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionDeleteParams;
import com.telnyx.sdk.models.portingorders.phonenumberextensions.PhoneNumberExtensionDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberExtensionDeleteParams params = PhoneNumberExtensionDeleteParams.builder()
            .portingOrderId("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .build();
        PhoneNumberExtensionDeleteResponse phoneNumberExtension = client.portingOrders().phoneNumberExtensions().delete(params);
    }
}
```

## List all exception types

`GET /porting_orders/exception_types`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveExceptionTypesParams;
import com.telnyx.sdk.models.portingorders.PortingOrderRetrieveExceptionTypesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingOrderRetrieveExceptionTypesResponse response = client.portingOrders().retrieveExceptionTypes();
    }
}
```

## List all phone number configurations

`GET /porting_orders/phone_number_configurations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberconfigurations.PhoneNumberConfigurationListPage;
import com.telnyx.sdk.models.portingorders.phonenumberconfigurations.PhoneNumberConfigurationListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberConfigurationListPage page = client.portingOrders().phoneNumberConfigurations().list();
    }
}
```

## Create a list of phone number configurations

`POST /porting_orders/phone_number_configurations`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingorders.phonenumberconfigurations.PhoneNumberConfigurationCreateParams;
import com.telnyx.sdk.models.portingorders.phonenumberconfigurations.PhoneNumberConfigurationCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberConfigurationCreateResponse phoneNumberConfiguration = client.portingOrders().phoneNumberConfigurations().create();
    }
}
```

## List all porting phone numbers

`GET /porting/phone_numbers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portingphonenumbers.PortingPhoneNumberListPage;
import com.telnyx.sdk.models.portingphonenumbers.PortingPhoneNumberListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingPhoneNumberListPage page = client.portingPhoneNumbers().list();
    }
}
```

## List porting related reports

`GET /porting/reports`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.reports.ReportListPage;
import com.telnyx.sdk.models.porting.reports.ReportListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportListPage page = client.porting().reports().list();
    }
}
```

## Create a porting related report

`POST /porting/reports`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.reports.ExportPortingOrdersCsvReport;
import com.telnyx.sdk.models.porting.reports.ReportCreateParams;
import com.telnyx.sdk.models.porting.reports.ReportCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportCreateParams params = ReportCreateParams.builder()
            .params(ExportPortingOrdersCsvReport.builder()
                .filters(ExportPortingOrdersCsvReport.Filters.builder().build())
                .build())
            .reportType(ReportCreateParams.ReportType.EXPORT_PORTING_ORDERS_CSV)
            .build();
        ReportCreateResponse report = client.porting().reports().create(params);
    }
}
```

## Retrieve a report

`GET /porting/reports/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.reports.ReportRetrieveParams;
import com.telnyx.sdk.models.porting.reports.ReportRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ReportRetrieveResponse report = client.porting().reports().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## List available carriers in the UK

`GET /porting/uk_carriers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.porting.PortingListUkCarriersParams;
import com.telnyx.sdk.models.porting.PortingListUkCarriersResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortingListUkCarriersResponse response = client.porting().listUkCarriers();
    }
}
```

## Run a portability check

`POST /portability_checks`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.portabilitychecks.PortabilityCheckRunParams;
import com.telnyx.sdk.models.portabilitychecks.PortabilityCheckRunResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PortabilityCheckRunResponse response = client.portabilityChecks().run();
    }
}
```
