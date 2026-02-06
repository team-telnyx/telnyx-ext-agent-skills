---
name: telnyx-10dlc-ruby
description: >-
  Register brands and campaigns for 10DLC (10-digit long code) A2P messaging
  compliance in the US. Manage campaign assignments to phone numbers. This skill
  provides Ruby SDK examples.
metadata:
  author: telnyx
  product: 10dlc
  language: ruby
---

# Telnyx 10Dlc - Ruby

## Installation

```bash
gem install telnyx
```

## List Brands

`GET /10dlc/brand`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_10dlc.brand.list

puts(page)
```

## Create Brand

`POST /10dlc/brand`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_brand = telnyx.messaging_10dlc.brand.create(
  country: "US",
  display_name: "ABC Mobile",
  email: "email",
  entity_type: :PRIVATE_PROFIT,
  vertical: :TECHNOLOGY
)

puts(telnyx_brand)
```

## Get Brand

`GET /10dlc/brand/{brandId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

brand = telnyx.messaging_10dlc.brand.retrieve("brandId")

puts(brand)
```

## Update Brand

`PUT /10dlc/brand/{brandId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_brand = telnyx.messaging_10dlc.brand.update(
  "brandId",
  country: "US",
  display_name: "ABC Mobile",
  email: "email",
  entity_type: :PRIVATE_PROFIT,
  vertical: :TECHNOLOGY
)

puts(telnyx_brand)
```

## Delete Brand

`DELETE /10dlc/brand/{brandId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.messaging_10dlc.brand.delete("brandId")

puts(result)
```

## Resend brand 2FA email

`POST /10dlc/brand/{brandId}/2faEmail`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.messaging_10dlc.brand.resend_2fa_email("brandId")

puts(result)
```

## List External Vettings

`GET /10dlc/brand/{brandId}/externalVetting`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

external_vettings = telnyx.messaging_10dlc.brand.external_vetting.list("brandId")

puts(external_vettings)
```

## Order Brand External Vetting

`POST /10dlc/brand/{brandId}/externalVetting`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.brand.external_vetting.order(
  "brandId",
  evp_id: "evpId",
  vetting_class: "vettingClass"
)

puts(response)
```

## Import External Vetting Record

`PUT /10dlc/brand/{brandId}/externalVetting`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.brand.external_vetting.imports("brandId", evp_id: "evpId", vetting_id: "vettingId")

puts(response)
```

## Revet Brand

`PUT /10dlc/brand/{brandId}/revet`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_brand = telnyx.messaging_10dlc.brand.revet("brandId")

puts(telnyx_brand)
```

## Get Brand SMS OTP Status by Brand ID

`GET /10dlc/brand/{brandId}/smsOtp`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.brand.retrieve_sms_otp_status("4b20019b-043a-78f8-0657-b3be3f4b4002")

puts(response)
```

## Trigger Brand SMS OTP

`POST /10dlc/brand/{brandId}/smsOtp`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.brand.trigger_sms_otp(
  "4b20019b-043a-78f8-0657-b3be3f4b4002",
  pin_sms: "Your PIN is @OTP_PIN@",
  success_sms: "Verification successful!"
)

puts(response)
```

## Verify Brand SMS OTP

`PUT /10dlc/brand/{brandId}/smsOtp`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.messaging_10dlc.brand.verify_sms_otp("4b20019b-043a-78f8-0657-b3be3f4b4002", otp_pin: "123456")

puts(result)
```

## Get Brand Feedback By Id

`GET /10dlc/brand_feedback/{brandId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.brand.get_feedback("brandId")

puts(response)
```

## Submit Campaign

`POST /10dlc/campaignBuilder`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_campaign_csp = telnyx.messaging_10dlc.campaign_builder.submit(
  brand_id: "brandId",
  description: "description",
  usecase: "usecase"
)

puts(telnyx_campaign_csp)
```

## Qualify By Usecase

`GET /10dlc/campaignBuilder/brand/{brandId}/usecase/{usecase}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign_builder.brand.qualify_by_usecase("usecase", brand_id: "brandId")

puts(response)
```

## List Campaigns

`GET /10dlc/campaign`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_10dlc.campaign.list(brand_id: "brandId")

puts(page)
```

## Get campaign

`GET /10dlc/campaign/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_campaign_csp = telnyx.messaging_10dlc.campaign.retrieve("campaignId")

puts(telnyx_campaign_csp)
```

## Update campaign

`PUT /10dlc/campaign/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_campaign_csp = telnyx.messaging_10dlc.campaign.update("campaignId")

puts(telnyx_campaign_csp)
```

## Deactivate campaign

`DELETE /10dlc/campaign/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.deactivate("campaignId")

puts(response)
```

## Submit campaign appeal for manual review

`POST /10dlc/campaign/{campaignId}/appeal`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.submit_appeal(
  "5eb13888-32b7-4cab-95e6-d834dde21d64",
  appeal_reason: "The website has been updated to include the required privacy policy and terms of service."
)

puts(response)
```

## Get Campaign Mno Metadata

`GET /10dlc/campaign/{campaignId}/mnoMetadata`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.get_mno_metadata("campaignId")

puts(response)
```

## Get campaign operation status

`GET /10dlc/campaign/{campaignId}/operationStatus`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.get_operation_status("campaignId")

puts(response)
```

## Get OSR campaign attributes

`GET /10dlc/campaign/{campaignId}/osr_attributes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.osr.get_attributes("campaignId")

puts(response)
```

## Get Sharing Status

`GET /10dlc/campaign/{campaignId}/sharing`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.get_sharing_status("campaignId")

puts(response)
```

## Accept Shared Campaign

`POST /10dlc/campaign/acceptSharing/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.accept_sharing("C26F1KLZN")

puts(response)
```

## Get Campaign Cost

`GET /10dlc/campaign/usecase_cost`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.campaign.usecase.get_cost(usecase: "usecase")

puts(response)
```

## List Shared Campaigns

`GET /10dlc/partner_campaigns`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_10dlc.partner_campaigns.list

puts(page)
```

## Get Single Shared Campaign

`GET /10dlc/partner_campaigns/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_downstream_campaign = telnyx.messaging_10dlc.partner_campaigns.retrieve("campaignId")

puts(telnyx_downstream_campaign)
```

## Update Single Shared Campaign

`PATCH /10dlc/partner_campaigns/{campaignId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telnyx_downstream_campaign = telnyx.messaging_10dlc.partner_campaigns.update("campaignId")

puts(telnyx_downstream_campaign)
```

## Get Sharing Status

`GET /10dlc/partnerCampaign/{campaignId}/sharing`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.partner_campaigns.retrieve_sharing_status("campaignId")

puts(response)
```

## List shared partner campaigns

`GET /10dlc/partnerCampaign/sharedByMe`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_10dlc.partner_campaigns.list_shared_by_me

puts(page)
```

## List phone number campaigns

`GET /10dlc/phone_number_campaigns`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_10dlc.phone_number_campaigns.list

puts(page)
```

## Create New Phone Number Campaign

`POST /10dlc/phone_number_campaigns`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_campaign = telnyx.messaging_10dlc.phone_number_campaigns.create(
  campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
  phone_number: "+18005550199"
)

puts(phone_number_campaign)
```

## Get Single Phone Number Campaign

`GET /10dlc/phone_number_campaigns/{phoneNumber}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_campaign = telnyx.messaging_10dlc.phone_number_campaigns.retrieve("phoneNumber")

puts(phone_number_campaign)
```

## Create New Phone Number Campaign

`PUT /10dlc/phone_number_campaigns/{phoneNumber}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_campaign = telnyx.messaging_10dlc.phone_number_campaigns.update(
  "phoneNumber",
  campaign_id: "4b300178-131c-d902-d54e-72d90ba1620j",
  phone_number: "+18005550199"
)

puts(phone_number_campaign)
```

## Delete Phone Number Campaign

`DELETE /10dlc/phone_number_campaigns/{phoneNumber}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_campaign = telnyx.messaging_10dlc.phone_number_campaigns.delete("phoneNumber")

puts(phone_number_campaign)
```

## Assign Messaging Profile To Campaign

`POST /10dlc/phoneNumberAssignmentByProfile`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.phone_number_assignment_by_profile.assign(
  messaging_profile_id: "4001767e-ce0f-4cae-9d5f-0d5e636e7809"
)

puts(response)
```

## Get Assignment Task Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.phone_number_assignment_by_profile.retrieve_status("taskId")

puts(response)
```

## Get Phone Number Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}/phoneNumbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_10dlc.phone_number_assignment_by_profile.list_phone_number_status("taskId")

puts(response)
```
