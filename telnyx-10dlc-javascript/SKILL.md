---
name: telnyx-10dlc-javascript
description: >-
  Register brands and campaigns for 10DLC (10-digit long code) A2P messaging
  compliance in the US. Manage campaign assignments to phone numbers. This skill
  provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: 10dlc
  language: javascript
---

# Telnyx 10Dlc - JavaScript

## Installation

```bash
npm install telnyx
```

## List Brands

`GET /10dlc/brand`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const brandListResponse of client.messaging10dlc.brand.list()) {
  console.log(brandListResponse.identityStatus);
}
```

## Create Brand

`POST /10dlc/brand`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxBrand = await client.messaging10dlc.brand.create({
  country: 'US',
  displayName: 'ABC Mobile',
  email: 'email',
  entityType: 'PRIVATE_PROFIT',
  vertical: 'TECHNOLOGY',
});

console.log(telnyxBrand.identityStatus);
```

## Get Brand

`GET /10dlc/brand/{brandId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const brand = await client.messaging10dlc.brand.retrieve('brandId');

console.log(brand);
```

## Update Brand

`PUT /10dlc/brand/{brandId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxBrand = await client.messaging10dlc.brand.update('brandId', {
  country: 'US',
  displayName: 'ABC Mobile',
  email: 'email',
  entityType: 'PRIVATE_PROFIT',
  vertical: 'TECHNOLOGY',
});

console.log(telnyxBrand.identityStatus);
```

## Delete Brand

`DELETE /10dlc/brand/{brandId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.messaging10dlc.brand.delete('brandId');
```

## Resend brand 2FA email

`POST /10dlc/brand/{brandId}/2faEmail`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.messaging10dlc.brand.resend2faEmail('brandId');
```

## List External Vettings

`GET /10dlc/brand/{brandId}/externalVetting`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const externalVettings = await client.messaging10dlc.brand.externalVetting.list('brandId');

console.log(externalVettings);
```

## Order Brand External Vetting

`POST /10dlc/brand/{brandId}/externalVetting`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.brand.externalVetting.order('brandId', {
  evpId: 'evpId',
  vettingClass: 'vettingClass',
});

console.log(response.createDate);
```

## Import External Vetting Record

`PUT /10dlc/brand/{brandId}/externalVetting`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.brand.externalVetting.imports('brandId', {
  evpId: 'evpId',
  vettingId: 'vettingId',
});

console.log(response.createDate);
```

## Revet Brand

`PUT /10dlc/brand/{brandId}/revet`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxBrand = await client.messaging10dlc.brand.revet('brandId');

console.log(telnyxBrand.identityStatus);
```

## Get Brand SMS OTP Status by Brand ID

`GET /10dlc/brand/{brandId}/smsOtp`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.brand.retrieveSMSOtpStatus(
  '4b20019b-043a-78f8-0657-b3be3f4b4002',
);

console.log(response.brandId);
```

## Trigger Brand SMS OTP

`POST /10dlc/brand/{brandId}/smsOtp`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.brand.triggerSMSOtp(
  '4b20019b-043a-78f8-0657-b3be3f4b4002',
  { pinSms: 'Your PIN is @OTP_PIN@', successSms: 'Verification successful!' },
);

console.log(response.brandId);
```

## Verify Brand SMS OTP

`PUT /10dlc/brand/{brandId}/smsOtp`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.messaging10dlc.brand.verifySMSOtp('4b20019b-043a-78f8-0657-b3be3f4b4002', {
  otpPin: '123456',
});
```

## Get Brand Feedback By Id

`GET /10dlc/brand_feedback/{brandId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.brand.getFeedback('brandId');

console.log(response.brandId);
```

## Submit Campaign

`POST /10dlc/campaignBuilder`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxCampaignCsp = await client.messaging10dlc.campaignBuilder.submit({
  brandId: 'brandId',
  description: 'description',
  usecase: 'usecase',
});

console.log(telnyxCampaignCsp.brandId);
```

## Qualify By Usecase

`GET /10dlc/campaignBuilder/brand/{brandId}/usecase/{usecase}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaignBuilder.brand.qualifyByUsecase('usecase', {
  brandId: 'brandId',
});

console.log(response.annualFee);
```

## List Campaigns

`GET /10dlc/campaign`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const campaignListResponse of client.messaging10dlc.campaign.list({
  brandId: 'brandId',
})) {
  console.log(campaignListResponse.ageGated);
}
```

## Get campaign

`GET /10dlc/campaign/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxCampaignCsp = await client.messaging10dlc.campaign.retrieve('campaignId');

console.log(telnyxCampaignCsp.brandId);
```

## Update campaign

`PUT /10dlc/campaign/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxCampaignCsp = await client.messaging10dlc.campaign.update('campaignId');

console.log(telnyxCampaignCsp.brandId);
```

## Deactivate campaign

`DELETE /10dlc/campaign/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.deactivate('campaignId');

console.log(response.time);
```

## Submit campaign appeal for manual review

`POST /10dlc/campaign/{campaignId}/appeal`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.submitAppeal(
  '5eb13888-32b7-4cab-95e6-d834dde21d64',
  {
    appeal_reason:
      'The website has been updated to include the required privacy policy and terms of service.',
  },
);

console.log(response.appealed_at);
```

## Get Campaign Mno Metadata

`GET /10dlc/campaign/{campaignId}/mnoMetadata`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.getMnoMetadata('campaignId');

console.log(response['10999']);
```

## Get campaign operation status

`GET /10dlc/campaign/{campaignId}/operationStatus`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.getOperationStatus('campaignId');

console.log(response);
```

## Get OSR campaign attributes

`GET /10dlc/campaign/{campaignId}/osr_attributes`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.osr.getAttributes('campaignId');

console.log(response);
```

## Get Sharing Status

`GET /10dlc/campaign/{campaignId}/sharing`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.getSharingStatus('campaignId');

console.log(response.sharedByMe);
```

## Accept Shared Campaign

`POST /10dlc/campaign/acceptSharing/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.acceptSharing('C26F1KLZN');

console.log(response);
```

## Get Campaign Cost

`GET /10dlc/campaign/usecase_cost`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.campaign.usecase.getCost({ usecase: 'usecase' });

console.log(response.campaignUsecase);
```

## List Shared Campaigns

`GET /10dlc/partner_campaigns`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const telnyxDownstreamCampaign of client.messaging10dlc.partnerCampaigns.list()) {
  console.log(telnyxDownstreamCampaign.tcrBrandId);
}
```

## Get Single Shared Campaign

`GET /10dlc/partner_campaigns/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxDownstreamCampaign = await client.messaging10dlc.partnerCampaigns.retrieve(
  'campaignId',
);

console.log(telnyxDownstreamCampaign.tcrBrandId);
```

## Update Single Shared Campaign

`PATCH /10dlc/partner_campaigns/{campaignId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const telnyxDownstreamCampaign = await client.messaging10dlc.partnerCampaigns.update('campaignId');

console.log(telnyxDownstreamCampaign.tcrBrandId);
```

## Get Sharing Status

`GET /10dlc/partnerCampaign/{campaignId}/sharing`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.partnerCampaigns.retrieveSharingStatus('campaignId');

console.log(response);
```

## List shared partner campaigns

`GET /10dlc/partnerCampaign/sharedByMe`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const partnerCampaignListSharedByMeResponse of client.messaging10dlc.partnerCampaigns.listSharedByMe()) {
  console.log(partnerCampaignListSharedByMeResponse.brandId);
}
```

## List phone number campaigns

`GET /10dlc/phone_number_campaigns`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumberCampaign of client.messaging10dlc.phoneNumberCampaigns.list()) {
  console.log(phoneNumberCampaign.campaignId);
}
```

## Create New Phone Number Campaign

`POST /10dlc/phone_number_campaigns`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberCampaign = await client.messaging10dlc.phoneNumberCampaigns.create({
  campaignId: '4b300178-131c-d902-d54e-72d90ba1620j',
  phoneNumber: '+18005550199',
});

console.log(phoneNumberCampaign.campaignId);
```

## Get Single Phone Number Campaign

`GET /10dlc/phone_number_campaigns/{phoneNumber}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberCampaign = await client.messaging10dlc.phoneNumberCampaigns.retrieve(
  'phoneNumber',
);

console.log(phoneNumberCampaign.campaignId);
```

## Create New Phone Number Campaign

`PUT /10dlc/phone_number_campaigns/{phoneNumber}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberCampaign = await client.messaging10dlc.phoneNumberCampaigns.update('phoneNumber', {
  campaignId: '4b300178-131c-d902-d54e-72d90ba1620j',
  phoneNumber: '+18005550199',
});

console.log(phoneNumberCampaign.campaignId);
```

## Delete Phone Number Campaign

`DELETE /10dlc/phone_number_campaigns/{phoneNumber}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberCampaign = await client.messaging10dlc.phoneNumberCampaigns.delete('phoneNumber');

console.log(phoneNumberCampaign.campaignId);
```

## Assign Messaging Profile To Campaign

`POST /10dlc/phoneNumberAssignmentByProfile`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.phoneNumberAssignmentByProfile.assign({
  messagingProfileId: '4001767e-ce0f-4cae-9d5f-0d5e636e7809',
});

console.log(response.messagingProfileId);
```

## Get Assignment Task Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.phoneNumberAssignmentByProfile.retrieveStatus(
  'taskId',
);

console.log(response.status);
```

## Get Phone Number Status

`GET /10dlc/phoneNumberAssignmentByProfile/{taskId}/phoneNumbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging10dlc.phoneNumberAssignmentByProfile.listPhoneNumberStatus(
  'taskId',
);

console.log(response.records);
```
