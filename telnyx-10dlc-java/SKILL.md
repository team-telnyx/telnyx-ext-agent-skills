---
name: telnyx-10dlc-java
description: >-
  Register brands and campaigns for 10DLC (10-digit long code) A2P messaging
  compliance in the US. Manage campaign assignments to phone numbers. This skill
  provides Java SDK examples.
metadata:
  author: telnyx
  product: 10dlc
  language: java
---

# Telnyx 10Dlc - Java

## Installation

```bash
// Add to pom.xml or build.gradle - see https://github.com/team-telnyx/telnyx-java
```

## List Brands

`GET /10dlc/brand`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandListPage;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandListPage page = client.messaging10dlc().brand().list();
    }
}
```

## Create Brand

`POST /10dlc/brand`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandCreateParams;
import com.telnyx.sdk.models.messaging10dlc.brand.EntityType;
import com.telnyx.sdk.models.messaging10dlc.brand.TelnyxBrand;
import com.telnyx.sdk.models.messaging10dlc.brand.Vertical;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandCreateParams params = BrandCreateParams.builder()
            .country("US")
            .displayName("ABC Mobile")
            .email("email")
            .entityType(EntityType.PRIVATE_PROFIT)
            .vertical(Vertical.TECHNOLOGY)
            .build();
        TelnyxBrand telnyxBrand = client.messaging10dlc().brand().create(params);
    }
}
```

## Get Brand

`GET /10dlc/brand/{brandId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandRetrieveParams;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandRetrieveResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandRetrieveResponse brand = client.messaging10dlc().brand().retrieve("brandId");
    }
}
```

## Update Brand

`PUT /10dlc/brand/{brandId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandUpdateParams;
import com.telnyx.sdk.models.messaging10dlc.brand.EntityType;
import com.telnyx.sdk.models.messaging10dlc.brand.TelnyxBrand;
import com.telnyx.sdk.models.messaging10dlc.brand.Vertical;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandUpdateParams params = BrandUpdateParams.builder()
            .brandId("brandId")
            .country("US")
            .displayName("ABC Mobile")
            .email("email")
            .entityType(EntityType.PRIVATE_PROFIT)
            .vertical(Vertical.TECHNOLOGY)
            .build();
        TelnyxBrand telnyxBrand = client.messaging10dlc().brand().update(params);
    }
}
```

## Delete Brand

`DELETE /10dlc/brand/{brandId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.messaging10dlc().brand().delete("brandId");
    }
}
```

## Resend brand 2FA email

`POST /10dlc/brand/{brandId}/2faEmail`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandResend2faEmailParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        client.messaging10dlc().brand().resend2faEmail("brandId");
    }
}
```

## List External Vettings

`GET /10dlc/brand/{brandId}/externalVetting`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingListParams;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingListResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        List<ExternalVettingListResponse> externalVettings = client.messaging10dlc().brand().externalVetting().list("brandId");
    }
}
```

## Order Brand External Vetting

`POST /10dlc/brand/{brandId}/externalVetting`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingOrderParams;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingOrderResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalVettingOrderParams params = ExternalVettingOrderParams.builder()
            .brandId("brandId")
            .evpId("evpId")
            .vettingClass("vettingClass")
            .build();
        ExternalVettingOrderResponse response = client.messaging10dlc().brand().externalVetting().order(params);
    }
}
```

## Import External Vetting Record

`PUT /10dlc/brand/{brandId}/externalVetting`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingImportsParams;
import com.telnyx.sdk.models.messaging10dlc.brand.externalvetting.ExternalVettingImportsResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        ExternalVettingImportsParams params = ExternalVettingImportsParams.builder()
            .brandId("brandId")
            .evpId("evpId")
            .vettingId("vettingId")
            .build();
        ExternalVettingImportsResponse response = client.messaging10dlc().brand().externalVetting().imports(params);
    }
}
```

## Revet Brand

`PUT /10dlc/brand/{brandId}/revet`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandRevetParams;
import com.telnyx.sdk.models.messaging10dlc.brand.TelnyxBrand;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TelnyxBrand telnyxBrand = client.messaging10dlc().brand().revet("brandId");
    }
}
```

## Get Brand SMS OTP Status by Brand ID

`GET /10dlc/brand/{brandId}/smsOtp`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandRetrieveSmsOtpStatusParams;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandRetrieveSmsOtpStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandRetrieveSmsOtpStatusResponse response = client.messaging10dlc().brand().retrieveSmsOtpStatus("4b20019b-043a-78f8-0657-b3be3f4b4002");
    }
}
```

## Trigger Brand SMS OTP

`POST /10dlc/brand/{brandId}/smsOtp`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandTriggerSmsOtpParams;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandTriggerSmsOtpResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandTriggerSmsOtpParams params = BrandTriggerSmsOtpParams.builder()
            .brandId("4b20019b-043a-78f8-0657-b3be3f4b4002")
            .pinSms("Your PIN is @OTP_PIN@")
            .successSms("Verification successful!")
            .build();
        BrandTriggerSmsOtpResponse response = client.messaging10dlc().brand().triggerSmsOtp(params);
    }
}
```

## Verify Brand SMS OTP

`PUT /10dlc/brand/{brandId}/smsOtp`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandVerifySmsOtpParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandVerifySmsOtpParams params = BrandVerifySmsOtpParams.builder()
            .brandId("4b20019b-043a-78f8-0657-b3be3f4b4002")
            .otpPin("123456")
            .build();
        client.messaging10dlc().brand().verifySmsOtp(params);
    }
}
```

## Get Brand Feedback By Id

`GET /10dlc/brand_feedback/{brandId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandGetFeedbackParams;
import com.telnyx.sdk.models.messaging10dlc.brand.BrandGetFeedbackResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandGetFeedbackResponse response = client.messaging10dlc().brand().getFeedback("brandId");
    }
}
```

## Submit Campaign

`POST /10dlc/campaignBuilder`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.TelnyxCampaignCsp;
import com.telnyx.sdk.models.messaging10dlc.campaignbuilder.CampaignBuilderSubmitParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignBuilderSubmitParams params = CampaignBuilderSubmitParams.builder()
            .brandId("brandId")
            .description("description")
            .usecase("usecase")
            .build();
        TelnyxCampaignCsp telnyxCampaignCsp = client.messaging10dlc().campaignBuilder().submit(params);
    }
}
```

## Qualify By Usecase

`GET /10dlc/campaignBuilder/brand/{brandId}/usecase/{usecase}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaignbuilder.brand.BrandQualifyByUsecaseParams;
import com.telnyx.sdk.models.messaging10dlc.campaignbuilder.brand.BrandQualifyByUsecaseResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        BrandQualifyByUsecaseParams params = BrandQualifyByUsecaseParams.builder()
            .brandId("brandId")
            .usecase("usecase")
            .build();
        BrandQualifyByUsecaseResponse response = client.messaging10dlc().campaignBuilder().brand().qualifyByUsecase(params);
    }
}
```

## List Campaigns

`GET /10dlc/campaign`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignListPage;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignListParams params = CampaignListParams.builder()
            .brandId("brandId")
            .build();
        CampaignListPage page = client.messaging10dlc().campaign().list(params);
    }
}
```

## Get campaign

`GET /10dlc/campaign/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignRetrieveParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.TelnyxCampaignCsp;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TelnyxCampaignCsp telnyxCampaignCsp = client.messaging10dlc().campaign().retrieve("campaignId");
    }
}
```

## Update campaign

`PUT /10dlc/campaign/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignUpdateParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.TelnyxCampaignCsp;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TelnyxCampaignCsp telnyxCampaignCsp = client.messaging10dlc().campaign().update("campaignId");
    }
}
```

## Deactivate campaign

`DELETE /10dlc/campaign/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignDeactivateParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignDeactivateResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignDeactivateResponse response = client.messaging10dlc().campaign().deactivate("campaignId");
    }
}
```

## Submit campaign appeal for manual review

`POST /10dlc/campaign/{campaignId}/appeal`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignSubmitAppealParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignSubmitAppealResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignSubmitAppealParams params = CampaignSubmitAppealParams.builder()
            .campaignId("5eb13888-32b7-4cab-95e6-d834dde21d64")
            .appealReason("The website has been updated to include the required privacy policy and terms of service.")
            .build();
        CampaignSubmitAppealResponse response = client.messaging10dlc().campaign().submitAppeal(params);
    }
}
```

## Get Campaign Mno Metadata

`GET /10dlc/campaign/{campaignId}/mnoMetadata`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetMnoMetadataParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetMnoMetadataResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignGetMnoMetadataResponse response = client.messaging10dlc().campaign().getMnoMetadata("campaignId");
    }
}
```

## Get campaign operation status

`GET /10dlc/campaign/{campaignId}/operationStatus`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetOperationStatusParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetOperationStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignGetOperationStatusResponse response = client.messaging10dlc().campaign().getOperationStatus("campaignId");
    }
}
```

## Get OSR campaign attributes

`GET /10dlc/campaign/{campaignId}/osr_attributes`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.osr.OsrGetAttributesParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.osr.OsrGetAttributesResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        OsrGetAttributesResponse response = client.messaging10dlc().campaign().osr().getAttributes("campaignId");
    }
}
```

## Get Sharing Status

`GET /10dlc/campaign/{campaignId}/sharing`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetSharingStatusParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignGetSharingStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignGetSharingStatusResponse response = client.messaging10dlc().campaign().getSharingStatus("campaignId");
    }
}
```

## Accept Shared Campaign

`POST /10dlc/campaign/acceptSharing/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignAcceptSharingParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.CampaignAcceptSharingResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        CampaignAcceptSharingResponse response = client.messaging10dlc().campaign().acceptSharing("C26F1KLZN");
    }
}
```

## Get Campaign Cost

`GET /10dlc/campaign/usecase_cost`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.campaign.usecase.UsecaseGetCostParams;
import com.telnyx.sdk.models.messaging10dlc.campaign.usecase.UsecaseGetCostResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        UsecaseGetCostParams params = UsecaseGetCostParams.builder()
            .usecase("usecase")
            .build();
        UsecaseGetCostResponse response = client.messaging10dlc().campaign().usecase().getCost(params);
    }
}
```

## List Shared Campaigns

`GET /10dlc/partner_campaigns`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignListPage;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PartnerCampaignListPage page = client.messaging10dlc().partnerCampaigns().list();
    }
}
```

## Get Single Shared Campaign

`GET /10dlc/partner_campaigns/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignRetrieveParams;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.TelnyxDownstreamCampaign;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TelnyxDownstreamCampaign telnyxDownstreamCampaign = client.messaging10dlc().partnerCampaigns().retrieve("campaignId");
    }
}
```

## Update Single Shared Campaign

`PATCH /10dlc/partner_campaigns/{campaignId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignUpdateParams;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.TelnyxDownstreamCampaign;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        TelnyxDownstreamCampaign telnyxDownstreamCampaign = client.messaging10dlc().partnerCampaigns().update("campaignId");
    }
}
```

## Get Sharing Status

`GET /10dlc/partnerCampaign/{campaignId}/sharing`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignRetrieveSharingStatusParams;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignRetrieveSharingStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PartnerCampaignRetrieveSharingStatusResponse response = client.messaging10dlc().partnerCampaigns().retrieveSharingStatus("campaignId");
    }
}
```

## List shared partner campaigns

`GET /10dlc/partnerCampaign/sharedByMe`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignListSharedByMePage;
import com.telnyx.sdk.models.messaging10dlc.partnercampaigns.PartnerCampaignListSharedByMeParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PartnerCampaignListSharedByMePage page = client.messaging10dlc().partnerCampaigns().listSharedByMe();
    }
}
```

## List phone number campaigns

`GET /10dlc/phone_number_campaigns`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignListPage;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignListParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberCampaignListPage page = client.messaging10dlc().phoneNumberCampaigns().list();
    }
}
```

## Create New Phone Number Campaign

`POST /10dlc/phone_number_campaigns`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaign;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignCreate;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignCreateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberCampaignCreate params = PhoneNumberCampaignCreate.builder()
            .campaignId("4b300178-131c-d902-d54e-72d90ba1620j")
            .phoneNumber("+18005550199")
            .build();
        PhoneNumberCampaign phoneNumberCampaign = client.messaging10dlc().phoneNumberCampaigns().create(params);
    }
}
```

## Get Single Phone Number Campaign

`GET /10dlc/phone_number_campaigns/{phoneNumber}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaign;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignRetrieveParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberCampaign phoneNumberCampaign = client.messaging10dlc().phoneNumberCampaigns().retrieve("phoneNumber");
    }
}
```

## Create New Phone Number Campaign

`PUT /10dlc/phone_number_campaigns/{phoneNumber}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaign;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignCreate;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignUpdateParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberCampaignUpdateParams params = PhoneNumberCampaignUpdateParams.builder()
            .campaignPhoneNumber("phoneNumber")
            .phoneNumberCampaignCreate(PhoneNumberCampaignCreate.builder()
                .campaignId("4b300178-131c-d902-d54e-72d90ba1620j")
                .phoneNumber("+18005550199")
                .build())
            .build();
        PhoneNumberCampaign phoneNumberCampaign = client.messaging10dlc().phoneNumberCampaigns().update(params);
    }
}
```

## Delete Phone Number Campaign

`DELETE /10dlc/phone_number_campaigns/{phoneNumber}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaign;
import com.telnyx.sdk.models.messaging10dlc.phonenumbercampaigns.PhoneNumberCampaignDeleteParams;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberCampaign phoneNumberCampaign = client.messaging10dlc().phoneNumberCampaigns().delete("phoneNumber");
    }
}
```

## Assign Messaging Profile To Campaign

`POST /10dlc/phoneNumberAssignmentByProfile`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileAssignParams;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileAssignResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberAssignmentByProfileAssignParams params = PhoneNumberAssignmentByProfileAssignParams.builder()
            .messagingProfileId("4001767e-ce0f-4cae-9d5f-0d5e636e7809")
            .build();
        PhoneNumberAssignmentByProfileAssignResponse response = client.messaging10dlc().phoneNumberAssignmentByProfile().assign(params);
    }
}
```

## Get Assignment Task Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileRetrieveStatusParams;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileRetrieveStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberAssignmentByProfileRetrieveStatusResponse response = client.messaging10dlc().phoneNumberAssignmentByProfile().retrieveStatus("taskId");
    }
}
```

## Get Phone Number Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}/phoneNumbers`

```java
package com.telnyx.sdk.example;

import com.telnyx.sdk.client.TelnyxClient;
import com.telnyx.sdk.client.okhttp.TelnyxOkHttpClient;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileListPhoneNumberStatusParams;
import com.telnyx.sdk.models.messaging10dlc.phonenumberassignmentbyprofile.PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse;

public final class Main {
    private Main() {}

    public static void main(String[] args) {
        TelnyxClient client = TelnyxOkHttpClient.fromEnv();

        PhoneNumberAssignmentByProfileListPhoneNumberStatusResponse response = client.messaging10dlc().phoneNumberAssignmentByProfile().listPhoneNumberStatus("taskId");
    }
}
```
