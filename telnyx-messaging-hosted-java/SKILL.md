---
name: telnyx-messaging-hosted-java
description: >-
  Set up hosted SMS numbers, toll-free verification, and RCS messaging. Use when
  migrating numbers or enabling rich messaging features. This skill provides
  Java SDK examples.
metadata:
  author: telnyx
  product: messaging-hosted
  language: java
---

# Telnyx Messaging Hosted - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List messaging hosted number orders

`GET /messaging_hosted_number_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderListPage;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderListPage page = client.messagingHostedNumberOrders().list();
    }
}
```

## Create a messaging hosted number order

`POST /messaging_hosted_number_orders`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCreateParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCreateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderCreateResponse messagingHostedNumberOrder = client.messagingHostedNumberOrders().create();
    }
}
```

## Retrieve a messaging hosted number order

`GET /messaging_hosted_number_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderRetrieveParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderRetrieveResponse messagingHostedNumberOrder = client.messagingHostedNumberOrders().retrieve("id");
    }
}
```

## Delete a messaging hosted number order

`DELETE /messaging_hosted_number_orders/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderDeleteParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderDeleteResponse messagingHostedNumberOrder = client.messagingHostedNumberOrders().delete("id");
    }
}
```

## Upload hosted number document

`POST /messaging_hosted_number_orders/{id}/actions/file_upload`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.actions.ActionUploadFileParams;
import com.telnyx.sdk.models.messaginghostednumberorders.actions.ActionUploadFileResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ActionUploadFileResponse response = client.messagingHostedNumberOrders().actions().uploadFile("id");
    }
}
```

## Validate hosted number codes

`POST /messaging_hosted_number_orders/{id}/validation_codes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderValidateCodesParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderValidateCodesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderValidateCodesParams params = MessagingHostedNumberOrderValidateCodesParams.builder()
            .id("id")
            .addVerificationCode(MessagingHostedNumberOrderValidateCodesParams.VerificationCode.builder()
                .code("code")
                .phoneNumber("phone_number")
                .build())
            .build();
        MessagingHostedNumberOrderValidateCodesResponse response = client.messagingHostedNumberOrders().validateCodes(params);
    }
}
```

## Create hosted number verification codes

`POST /messaging_hosted_number_orders/{id}/verification_codes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCreateVerificationCodesParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCreateVerificationCodesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderCreateVerificationCodesParams params = MessagingHostedNumberOrderCreateVerificationCodesParams.builder()
            .id("id")
            .addPhoneNumber("string")
            .verificationMethod(MessagingHostedNumberOrderCreateVerificationCodesParams.VerificationMethod.SMS)
            .build();
        MessagingHostedNumberOrderCreateVerificationCodesResponse response = client.messagingHostedNumberOrders().createVerificationCodes(params);
    }
}
```

## Check hosted messaging eligibility

`POST /messaging_hosted_number_orders/eligibility_numbers_check`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCheckEligibilityParams;
import com.telnyx.sdk.models.messaginghostednumberorders.MessagingHostedNumberOrderCheckEligibilityResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberOrderCheckEligibilityParams params = MessagingHostedNumberOrderCheckEligibilityParams.builder()
            .addPhoneNumber("string")
            .build();
        MessagingHostedNumberOrderCheckEligibilityResponse response = client.messagingHostedNumberOrders().checkEligibility(params);
    }
}
```

## Delete a messaging hosted number

`DELETE /messaging_hosted_numbers/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaginghostednumbers.MessagingHostedNumberDeleteParams;
import com.telnyx.sdk.models.messaginghostednumbers.MessagingHostedNumberDeleteResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        MessagingHostedNumberDeleteResponse messagingHostedNumber = client.messagingHostedNumbers().delete("id");
    }
}
```

## Send an RCS message

`POST /messages/rcs`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messages.RcsAgentMessage;
import com.telnyx.sdk.models.messages.rcs.RcSendParams;
import com.telnyx.sdk.models.messages.rcs.RcSendResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcSendParams params = RcSendParams.builder()
            .agentId("Agent007")
            .agentMessage(RcsAgentMessage.builder().build())
            .messagingProfileId("messaging_profile_id")
            .to("+13125551234")
            .build();
        RcSendResponse response = client.messages().rcs().send(params);
    }
}
```

## List all RCS agents

`GET /messaging/rcs/agents`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.agents.AgentListPage;
import com.telnyx.sdk.models.messaging.rcs.agents.AgentListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        AgentListPage page = client.messaging().rcs().agents().list();
    }
}
```

## Retrieve an RCS agent

`GET /messaging/rcs/agents/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.agents.AgentRetrieveParams;
import com.telnyx.sdk.models.rcsagents.RcsAgentResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcsAgentResponse rcsAgentResponse = client.messaging().rcs().agents().retrieve("id");
    }
}
```

## Modify an RCS agent

`PATCH /messaging/rcs/agents/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.agents.AgentUpdateParams;
import com.telnyx.sdk.models.rcsagents.RcsAgentResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcsAgentResponse rcsAgentResponse = client.messaging().rcs().agents().update("id");
    }
}
```

## Check RCS capabilities (batch)

`POST /messaging/rcs/bulk_capabilities`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.RcListBulkCapabilitiesParams;
import com.telnyx.sdk.models.messaging.rcs.RcListBulkCapabilitiesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcListBulkCapabilitiesParams params = RcListBulkCapabilitiesParams.builder()
            .agentId("TestAgent")
            .addPhoneNumber("+13125551234")
            .build();
        RcListBulkCapabilitiesResponse response = client.messaging().rcs().listBulkCapabilities(params);
    }
}
```

## Check RCS capabilities

`GET /messaging/rcs/capabilities/{agent_id}/{phone_number}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.RcRetrieveCapabilitiesParams;
import com.telnyx.sdk.models.messaging.rcs.RcRetrieveCapabilitiesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcRetrieveCapabilitiesParams params = RcRetrieveCapabilitiesParams.builder()
            .agentId("agent_id")
            .phoneNumber("phone_number")
            .build();
        RcRetrieveCapabilitiesResponse response = client.messaging().rcs().retrieveCapabilities(params);
    }
}
```

## Add RCS test number

`PUT /messaging/rcs/test_number_invite/{id}/{phone_number}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging.rcs.RcInviteTestNumberParams;
import com.telnyx.sdk.models.messaging.rcs.RcInviteTestNumberResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcInviteTestNumberParams params = RcInviteTestNumberParams.builder()
            .id("id")
            .phoneNumber("phone_number")
            .build();
        RcInviteTestNumberResponse response = client.messaging().rcs().inviteTestNumber(params);
    }
}
```

## Generate RCS deeplink

`GET /messages/rcs_deeplinks/{agent_id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messages.rcs.RcGenerateDeeplinkParams;
import com.telnyx.sdk.models.messages.rcs.RcGenerateDeeplinkResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RcGenerateDeeplinkResponse response = client.messages().rcs().generateDeeplink("agent_id");
    }
}
```

## List Verification Requests

`GET /messaging_tollfree/verification/requests`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestListPage;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RequestListParams params = RequestListParams.builder()
            .page(1L)
            .pageSize(1L)
            .build();
        RequestListPage page = client.messagingTollfree().verification().requests().list(params);
    }
}
```

## Submit Verification Request

`POST /messaging_tollfree/verification/requests`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestCreateParams;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.TfPhoneNumber;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.TfVerificationRequest;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.Url;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.UseCaseCategories;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.VerificationRequestEgress;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.Volume;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TfVerificationRequest params = TfVerificationRequest.builder()
            .additionalInformation("additionalInformation")
            .businessAddr1("600 Congress Avenue")
            .businessCity("Austin")
            .businessContactEmail("email@example.com")
            .businessContactFirstName("John")
            .businessContactLastName("Doe")
            .businessContactPhone("+18005550100")
            .businessName("Telnyx LLC")
            .businessState("Texas")
            .businessZip("78701")
            .corporateWebsite("http://example.com")
            .isvReseller("isvReseller")
            .messageVolume(Volume.V_100000)
            .optInWorkflow("User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset")
            .addOptInWorkflowImageUrl(Url.builder()
                .url("https://telnyx.com/sign-up")
                .build())
            .addOptInWorkflowImageUrl(Url.builder()
                .url("https://telnyx.com/company/data-privacy")
                .build())
            .addPhoneNumber(TfPhoneNumber.builder()
                .phoneNumber("+18773554398")
                .build())
            .addPhoneNumber(TfPhoneNumber.builder()
                .phoneNumber("+18773554399")
                .build())
            .productionMessageContent("Your Telnyx OTP is XXXX")
            .useCase(UseCaseCategories.TWO_FA)
            .useCaseSummary("This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal")
            .build();
        VerificationRequestEgress verificationRequestEgress = client.messagingTollfree().verification().requests().create(params);
    }
}
```

## Get Verification Request

`GET /messaging_tollfree/verification/requests/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestRetrieveParams;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.VerificationRequestStatus;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        VerificationRequestStatus verificationRequestStatus = client.messagingTollfree().verification().requests().retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```

## Update Verification Request

`PATCH /messaging_tollfree/verification/requests/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestUpdateParams;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.TfPhoneNumber;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.TfVerificationRequest;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.Url;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.UseCaseCategories;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.VerificationRequestEgress;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.Volume;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        RequestUpdateParams params = RequestUpdateParams.builder()
            .id("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")
            .tfVerificationRequest(TfVerificationRequest.builder()
                .additionalInformation("additionalInformation")
                .businessAddr1("600 Congress Avenue")
                .businessCity("Austin")
                .businessContactEmail("email@example.com")
                .businessContactFirstName("John")
                .businessContactLastName("Doe")
                .businessContactPhone("+18005550100")
                .businessName("Telnyx LLC")
                .businessState("Texas")
                .businessZip("78701")
                .corporateWebsite("http://example.com")
                .isvReseller("isvReseller")
                .messageVolume(Volume.V_100000)
                .optInWorkflow("User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset")
                .addOptInWorkflowImageUrl(Url.builder()
                    .url("https://telnyx.com/sign-up")
                    .build())
                .addOptInWorkflowImageUrl(Url.builder()
                    .url("https://telnyx.com/company/data-privacy")
                    .build())
                .addPhoneNumber(TfPhoneNumber.builder()
                    .phoneNumber("+18773554398")
                    .build())
                .addPhoneNumber(TfPhoneNumber.builder()
                    .phoneNumber("+18773554399")
                    .build())
                .productionMessageContent("Your Telnyx OTP is XXXX")
                .useCase(UseCaseCategories.TWO_FA)
                .useCaseSummary("This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal")
                .build())
            .build();
        VerificationRequestEgress verificationRequestEgress = client.messagingTollfree().verification().requests().update(params);
    }
}
```

## Delete Verification Request

`DELETE /messaging_tollfree/verification/requests/{id}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messagingtollfree.verification.requests.RequestDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.messagingTollfree().verification().requests().delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e");
    }
}
```
