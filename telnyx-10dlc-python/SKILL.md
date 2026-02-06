---
name: telnyx-10dlc-python
description: >-
  Register brands and campaigns for 10DLC (10-digit long code) A2P messaging
  compliance in the US. Manage campaign assignments to phone numbers. This skill
  provides Python SDK examples.
metadata:
  author: telnyx
  product: 10dlc
  language: python
---

# Telnyx 10Dlc - Python

## Installation

```bash
pip install telnyx
```

## List Brands

`GET /10dlc/brand`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.messaging_10dlc.brand.list()
page = page.records[0]
print(page.identity_status)
```

## Create Brand

`POST /10dlc/brand`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_brand = client.messaging_10dlc.brand.create(
    country="US",
    display_name="ABC Mobile",
    email="email",
    entity_type="PRIVATE_PROFIT",
    vertical="TECHNOLOGY",
)
print(telnyx_brand.identity_status)
```

## Get Brand

`GET /10dlc/brand/{brandId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
brand = client.messaging_10dlc.brand.retrieve(
    "brandId",
)
print(brand)
```

## Update Brand

`PUT /10dlc/brand/{brandId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_brand = client.messaging_10dlc.brand.update(
    brand_id="brandId",
    country="US",
    display_name="ABC Mobile",
    email="email",
    entity_type="PRIVATE_PROFIT",
    vertical="TECHNOLOGY",
)
print(telnyx_brand.identity_status)
```

## Delete Brand

`DELETE /10dlc/brand/{brandId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.messaging_10dlc.brand.delete(
    "brandId",
)
```

## Resend brand 2FA email

`POST /10dlc/brand/{brandId}/2faEmail`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.messaging_10dlc.brand.resend_2fa_email(
    "brandId",
)
```

## List External Vettings

`GET /10dlc/brand/{brandId}/externalVetting`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
external_vettings = client.messaging_10dlc.brand.external_vetting.list(
    "brandId",
)
print(external_vettings)
```

## Order Brand External Vetting

`POST /10dlc/brand/{brandId}/externalVetting`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.brand.external_vetting.order(
    brand_id="brandId",
    evp_id="evpId",
    vetting_class="vettingClass",
)
print(response.create_date)
```

## Import External Vetting Record

`PUT /10dlc/brand/{brandId}/externalVetting`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.brand.external_vetting.imports(
    brand_id="brandId",
    evp_id="evpId",
    vetting_id="vettingId",
)
print(response.create_date)
```

## Revet Brand

`PUT /10dlc/brand/{brandId}/revet`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_brand = client.messaging_10dlc.brand.revet(
    "brandId",
)
print(telnyx_brand.identity_status)
```

## Get Brand SMS OTP Status by Brand ID

`GET /10dlc/brand/{brandId}/smsOtp`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.brand.retrieve_sms_otp_status(
    "4b20019b-043a-78f8-0657-b3be3f4b4002",
)
print(response.brand_id)
```

## Trigger Brand SMS OTP

`POST /10dlc/brand/{brandId}/smsOtp`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.brand.trigger_sms_otp(
    brand_id="4b20019b-043a-78f8-0657-b3be3f4b4002",
    pin_sms="Your PIN is @OTP_PIN@",
    success_sms="Verification successful!",
)
print(response.brand_id)
```

## Verify Brand SMS OTP

`PUT /10dlc/brand/{brandId}/smsOtp`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.messaging_10dlc.brand.verify_sms_otp(
    brand_id="4b20019b-043a-78f8-0657-b3be3f4b4002",
    otp_pin="123456",
)
```

## Get Brand Feedback By Id

`GET /10dlc/brand_feedback/{brandId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.brand.get_feedback(
    "brandId",
)
print(response.brand_id)
```

## Submit Campaign

`POST /10dlc/campaignBuilder`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_campaign_csp = client.messaging_10dlc.campaign_builder.submit(
    brand_id="brandId",
    description="description",
    usecase="usecase",
)
print(telnyx_campaign_csp.brand_id)
```

## Qualify By Usecase

`GET /10dlc/campaignBuilder/brand/{brandId}/usecase/{usecase}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign_builder.brand.qualify_by_usecase(
    usecase="usecase",
    brand_id="brandId",
)
print(response.annual_fee)
```

## List Campaigns

`GET /10dlc/campaign`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.messaging_10dlc.campaign.list(
    brand_id="brandId",
)
page = page.records[0]
print(page.age_gated)
```

## Get campaign

`GET /10dlc/campaign/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_campaign_csp = client.messaging_10dlc.campaign.retrieve(
    "campaignId",
)
print(telnyx_campaign_csp.brand_id)
```

## Update campaign

`PUT /10dlc/campaign/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_campaign_csp = client.messaging_10dlc.campaign.update(
    campaign_id="campaignId",
)
print(telnyx_campaign_csp.brand_id)
```

## Deactivate campaign

`DELETE /10dlc/campaign/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.deactivate(
    "campaignId",
)
print(response.time)
```

## Submit campaign appeal for manual review

`POST /10dlc/campaign/{campaignId}/appeal`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.submit_appeal(
    campaign_id="5eb13888-32b7-4cab-95e6-d834dde21d64",
    appeal_reason="The website has been updated to include the required privacy policy and terms of service.",
)
print(response.appealed_at)
```

## Get Campaign Mno Metadata

`GET /10dlc/campaign/{campaignId}/mnoMetadata`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.get_mno_metadata(
    "campaignId",
)
print(response._10999)
```

## Get campaign operation status

`GET /10dlc/campaign/{campaignId}/operationStatus`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.get_operation_status(
    "campaignId",
)
print(response)
```

## Get OSR campaign attributes

`GET /10dlc/campaign/{campaignId}/osr_attributes`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.osr.get_attributes(
    "campaignId",
)
print(response)
```

## Get Sharing Status

`GET /10dlc/campaign/{campaignId}/sharing`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.get_sharing_status(
    "campaignId",
)
print(response.shared_by_me)
```

## Accept Shared Campaign

`POST /10dlc/campaign/acceptSharing/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.accept_sharing(
    "C26F1KLZN",
)
print(response)
```

## Get Campaign Cost

`GET /10dlc/campaign/usecase_cost`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.campaign.usecase.get_cost(
    usecase="usecase",
)
print(response.campaign_usecase)
```

## List Shared Campaigns

`GET /10dlc/partner_campaigns`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.messaging_10dlc.partner_campaigns.list()
page = page.records[0]
print(page.tcr_brand_id)
```

## Get Single Shared Campaign

`GET /10dlc/partner_campaigns/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_downstream_campaign = client.messaging_10dlc.partner_campaigns.retrieve(
    "campaignId",
)
print(telnyx_downstream_campaign.tcr_brand_id)
```

## Update Single Shared Campaign

`PATCH /10dlc/partner_campaigns/{campaignId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telnyx_downstream_campaign = client.messaging_10dlc.partner_campaigns.update(
    campaign_id="campaignId",
)
print(telnyx_downstream_campaign.tcr_brand_id)
```

## Get Sharing Status

`GET /10dlc/partnerCampaign/{campaignId}/sharing`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.partner_campaigns.retrieve_sharing_status(
    "campaignId",
)
print(response)
```

## List shared partner campaigns

`GET /10dlc/partnerCampaign/sharedByMe`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.messaging_10dlc.partner_campaigns.list_shared_by_me()
page = page.records[0]
print(page.brand_id)
```

## List phone number campaigns

`GET /10dlc/phone_number_campaigns`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.messaging_10dlc.phone_number_campaigns.list()
page = page.records[0]
print(page.campaign_id)
```

## Create New Phone Number Campaign

`POST /10dlc/phone_number_campaigns`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_campaign = client.messaging_10dlc.phone_number_campaigns.create(
    campaign_id="4b300178-131c-d902-d54e-72d90ba1620j",
    phone_number="+18005550199",
)
print(phone_number_campaign.campaign_id)
```

## Get Single Phone Number Campaign

`GET /10dlc/phone_number_campaigns/{phoneNumber}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_campaign = client.messaging_10dlc.phone_number_campaigns.retrieve(
    "phoneNumber",
)
print(phone_number_campaign.campaign_id)
```

## Create New Phone Number Campaign

`PUT /10dlc/phone_number_campaigns/{phoneNumber}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_campaign = client.messaging_10dlc.phone_number_campaigns.update(
    campaign_phone_number="phoneNumber",
    campaign_id="4b300178-131c-d902-d54e-72d90ba1620j",
    phone_number="+18005550199",
)
print(phone_number_campaign.campaign_id)
```

## Delete Phone Number Campaign

`DELETE /10dlc/phone_number_campaigns/{phoneNumber}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number_campaign = client.messaging_10dlc.phone_number_campaigns.delete(
    "phoneNumber",
)
print(phone_number_campaign.campaign_id)
```

## Assign Messaging Profile To Campaign

`POST /10dlc/phoneNumberAssignmentByProfile`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.phone_number_assignment_by_profile.assign(
    messaging_profile_id="4001767e-ce0f-4cae-9d5f-0d5e636e7809",
)
print(response.messaging_profile_id)
```

## Get Assignment Task Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.phone_number_assignment_by_profile.retrieve_status(
    "taskId",
)
print(response.status)
```

## Get Phone Number Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}/phoneNumbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.messaging_10dlc.phone_number_assignment_by_profile.list_phone_number_status(
    task_id="taskId",
)
print(response.records)
```
