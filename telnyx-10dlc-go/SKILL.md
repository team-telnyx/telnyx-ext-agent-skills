---
name: telnyx-10dlc-go
description: >-
  Register brands and campaigns for 10DLC (10-digit long code) A2P messaging
  compliance in the US. Manage campaign assignments to phone numbers. This skill
  provides Go SDK examples.
metadata:
  author: telnyx
  product: 10dlc
  language: go
---

# Telnyx 10Dlc - Go

## Installation

```bash
go get github.com/team-telnyx/telnyx-go
```

## List Brands

`GET /10dlc/brand`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Messaging10dlc.Brand.List(context.TODO(), telnyx.Messaging10dlcBrandListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create Brand

`POST /10dlc/brand`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxBrand, err := client.Messaging10dlc.Brand.New(context.TODO(), telnyx.Messaging10dlcBrandNewParams{
    Country: "US",
    DisplayName: "ABC Mobile",
    Email: "email",
    EntityType: telnyx.EntityTypePrivateProfit,
    Vertical: telnyx.VerticalTechnology,
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxBrand.IdentityStatus)
}
```

## Get Brand

`GET /10dlc/brand/{brandId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  brand, err := client.Messaging10dlc.Brand.Get(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", brand)
}
```

## Update Brand

`PUT /10dlc/brand/{brandId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxBrand, err := client.Messaging10dlc.Brand.Update(
    context.TODO(),
    "brandId",
    telnyx.Messaging10dlcBrandUpdateParams{
      Country: "US",
      DisplayName: "ABC Mobile",
      Email: "email",
      EntityType: telnyx.EntityTypePrivateProfit,
      Vertical: telnyx.VerticalTechnology,
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxBrand.IdentityStatus)
}
```

## Delete Brand

`DELETE /10dlc/brand/{brandId}`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Messaging10dlc.Brand.Delete(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
}
```

## Resend brand 2FA email

`POST /10dlc/brand/{brandId}/2faEmail`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Messaging10dlc.Brand.Resend2faEmail(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
}
```

## List External Vettings

`GET /10dlc/brand/{brandId}/externalVetting`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  externalVettings, err := client.Messaging10dlc.Brand.ExternalVetting.List(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", externalVettings)
}
```

## Order Brand External Vetting

`POST /10dlc/brand/{brandId}/externalVetting`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Brand.ExternalVetting.Order(
    context.TODO(),
    "brandId",
    telnyx.Messaging10dlcBrandExternalVettingOrderParams{
      EvpID: "evpId",
      VettingClass: "vettingClass",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.CreateDate)
}
```

## Import External Vetting Record

`PUT /10dlc/brand/{brandId}/externalVetting`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Brand.ExternalVetting.Imports(
    context.TODO(),
    "brandId",
    telnyx.Messaging10dlcBrandExternalVettingImportsParams{
      EvpID: "evpId",
      VettingID: "vettingId",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.CreateDate)
}
```

## Revet Brand

`PUT /10dlc/brand/{brandId}/revet`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxBrand, err := client.Messaging10dlc.Brand.Revet(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxBrand.IdentityStatus)
}
```

## Get Brand SMS OTP Status by Brand ID

`GET /10dlc/brand/{brandId}/smsOtp`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Brand.GetSMSOtpStatus(context.TODO(), "4b20019b-043a-78f8-0657-b3be3f4b4002")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.BrandID)
}
```

## Trigger Brand SMS OTP

`POST /10dlc/brand/{brandId}/smsOtp`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Brand.TriggerSMSOtp(
    context.TODO(),
    "4b20019b-043a-78f8-0657-b3be3f4b4002",
    telnyx.Messaging10dlcBrandTriggerSMSOtpParams{
      PinSMS: "Your PIN is @OTP_PIN@",
      SuccessSMS: "Verification successful!",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.BrandID)
}
```

## Verify Brand SMS OTP

`PUT /10dlc/brand/{brandId}/smsOtp`

```go
package main

import (
  "context"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  err := client.Messaging10dlc.Brand.VerifySMSOtp(
    context.TODO(),
    "4b20019b-043a-78f8-0657-b3be3f4b4002",
    telnyx.Messaging10dlcBrandVerifySMSOtpParams{
      OtpPin: "123456",
    },
  )
  if err != nil {
    panic(err.Error())
  }
}
```

## Get Brand Feedback By Id

`GET /10dlc/brand_feedback/{brandId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Brand.GetFeedback(context.TODO(), "brandId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.BrandID)
}
```

## Submit Campaign

`POST /10dlc/campaignBuilder`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxCampaignCsp, err := client.Messaging10dlc.CampaignBuilder.Submit(context.TODO(), telnyx.Messaging10dlcCampaignBuilderSubmitParams{
    BrandID: "brandId",
    Description: "description",
    Usecase: "usecase",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxCampaignCsp.BrandID)
}
```

## Qualify By Usecase

`GET /10dlc/campaignBuilder/brand/{brandId}/usecase/{usecase}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.CampaignBuilder.Brand.QualifyByUsecase(
    context.TODO(),
    "usecase",
    telnyx.Messaging10dlcCampaignBuilderBrandQualifyByUsecaseParams{
      BrandID: "brandId",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AnnualFee)
}
```

## List Campaigns

`GET /10dlc/campaign`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Messaging10dlc.Campaign.List(context.TODO(), telnyx.Messaging10dlcCampaignListParams{
    BrandID: "brandId",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get campaign

`GET /10dlc/campaign/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxCampaignCsp, err := client.Messaging10dlc.Campaign.Get(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxCampaignCsp.BrandID)
}
```

## Update campaign

`PUT /10dlc/campaign/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxCampaignCsp, err := client.Messaging10dlc.Campaign.Update(
    context.TODO(),
    "campaignId",
    telnyx.Messaging10dlcCampaignUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxCampaignCsp.BrandID)
}
```

## Deactivate campaign

`DELETE /10dlc/campaign/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.Deactivate(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Time)
}
```

## Submit campaign appeal for manual review

`POST /10dlc/campaign/{campaignId}/appeal`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.SubmitAppeal(
    context.TODO(),
    "5eb13888-32b7-4cab-95e6-d834dde21d64",
    telnyx.Messaging10dlcCampaignSubmitAppealParams{
      AppealReason: "The website has been updated to include the required privacy policy and terms of service.",
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.AppealedAt)
}
```

## Get Campaign Mno Metadata

`GET /10dlc/campaign/{campaignId}/mnoMetadata`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.GetMnoMetadata(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Number10999)
}
```

## Get campaign operation status

`GET /10dlc/campaign/{campaignId}/operationStatus`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.GetOperationStatus(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Get OSR campaign attributes

`GET /10dlc/campaign/{campaignId}/osr_attributes`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.Osr.GetAttributes(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Get Sharing Status

`GET /10dlc/campaign/{campaignId}/sharing`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.GetSharingStatus(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.SharedByMe)
}
```

## Accept Shared Campaign

`POST /10dlc/campaign/acceptSharing/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.AcceptSharing(context.TODO(), "C26F1KLZN")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## Get Campaign Cost

`GET /10dlc/campaign/usecase_cost`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.Campaign.Usecase.GetCost(context.TODO(), telnyx.Messaging10dlcCampaignUsecaseGetCostParams{
    Usecase: "usecase",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.CampaignUsecase)
}
```

## List Shared Campaigns

`GET /10dlc/partner_campaigns`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Messaging10dlc.PartnerCampaigns.List(context.TODO(), telnyx.Messaging10dlcPartnerCampaignListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Get Single Shared Campaign

`GET /10dlc/partner_campaigns/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxDownstreamCampaign, err := client.Messaging10dlc.PartnerCampaigns.Get(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxDownstreamCampaign.TcrBrandID)
}
```

## Update Single Shared Campaign

`PATCH /10dlc/partner_campaigns/{campaignId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  telnyxDownstreamCampaign, err := client.Messaging10dlc.PartnerCampaigns.Update(
    context.TODO(),
    "campaignId",
    telnyx.Messaging10dlcPartnerCampaignUpdateParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", telnyxDownstreamCampaign.TcrBrandID)
}
```

## Get Sharing Status

`GET /10dlc/partnerCampaign/{campaignId}/sharing`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.PartnerCampaigns.GetSharingStatus(context.TODO(), "campaignId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response)
}
```

## List shared partner campaigns

`GET /10dlc/partnerCampaign/sharedByMe`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Messaging10dlc.PartnerCampaigns.ListSharedByMe(context.TODO(), telnyx.Messaging10dlcPartnerCampaignListSharedByMeParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## List phone number campaigns

`GET /10dlc/phone_number_campaigns`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  page, err := client.Messaging10dlc.PhoneNumberCampaigns.List(context.TODO(), telnyx.Messaging10dlcPhoneNumberCampaignListParams{

  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", page)
}
```

## Create New Phone Number Campaign

`POST /10dlc/phone_number_campaigns`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  phoneNumberCampaign, err := client.Messaging10dlc.PhoneNumberCampaigns.New(context.TODO(), telnyx.Messaging10dlcPhoneNumberCampaignNewParams{
    PhoneNumberCampaignCreate: telnyx.PhoneNumberCampaignCreateParam{
      CampaignID: "4b300178-131c-d902-d54e-72d90ba1620j",
      PhoneNumber: "+18005550199",
    },
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberCampaign.CampaignID)
}
```

## Get Single Phone Number Campaign

`GET /10dlc/phone_number_campaigns/{phoneNumber}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  phoneNumberCampaign, err := client.Messaging10dlc.PhoneNumberCampaigns.Get(context.TODO(), "phoneNumber")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberCampaign.CampaignID)
}
```

## Create New Phone Number Campaign

`PUT /10dlc/phone_number_campaigns/{phoneNumber}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  phoneNumberCampaign, err := client.Messaging10dlc.PhoneNumberCampaigns.Update(
    context.TODO(),
    "phoneNumber",
    telnyx.Messaging10dlcPhoneNumberCampaignUpdateParams{
      PhoneNumberCampaignCreate: telnyx.PhoneNumberCampaignCreateParam{
        CampaignID: "4b300178-131c-d902-d54e-72d90ba1620j",
        PhoneNumber: "+18005550199",
      },
    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberCampaign.CampaignID)
}
```

## Delete Phone Number Campaign

`DELETE /10dlc/phone_number_campaigns/{phoneNumber}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  phoneNumberCampaign, err := client.Messaging10dlc.PhoneNumberCampaigns.Delete(context.TODO(), "phoneNumber")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", phoneNumberCampaign.CampaignID)
}
```

## Assign Messaging Profile To Campaign

`POST /10dlc/phoneNumberAssignmentByProfile`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.PhoneNumberAssignmentByProfile.Assign(context.TODO(), telnyx.Messaging10dlcPhoneNumberAssignmentByProfileAssignParams{
    MessagingProfileID: "4001767e-ce0f-4cae-9d5f-0d5e636e7809",
  })
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.MessagingProfileID)
}
```

## Get Assignment Task Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.PhoneNumberAssignmentByProfile.GetStatus(context.TODO(), "taskId")
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Status)
}
```

## Get Phone Number Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}/phoneNumbers`

```go
package main

import (
  "context"
  "fmt"

  "github.com/team-telnyx/telnyx-go"
  "github.com/team-telnyx/telnyx-go/option"
)

func main() {
  client := telnyx.NewClient(
    option.WithAPIKey("My API Key"),
  )
  response, err := client.Messaging10dlc.PhoneNumberAssignmentByProfile.ListPhoneNumberStatus(
    context.TODO(),
    "taskId",
    telnyx.Messaging10dlcPhoneNumberAssignmentByProfileListPhoneNumberStatusParams{

    },
  )
  if err != nil {
    panic(err.Error())
  }
  fmt.Printf("%+v\n", response.Records)
}
```
