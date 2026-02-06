---
name: telnyx-numbers-config-javascript
description: >-
  Configure phone number settings including caller ID, call forwarding,
  messaging enablement, and connection assignments. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: numbers-config
  language: javascript
---

# Telnyx Numbers Config - JavaScript

## Installation

```bash
npm install telnyx
```

## Lists the phone number blocks jobs

`GET /phone_number_blocks/jobs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const job of client.phoneNumberBlocks.jobs.list()) {
  console.log(job.id);
}
```

## Retrieves a phone number blocks job

`GET /phone_number_blocks/jobs/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const job = await client.phoneNumberBlocks.jobs.retrieve('id');

console.log(job.data);
```

## Deletes all numbers associated with a phone number block

`POST /phone_number_blocks/jobs/delete_phone_number_block`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumberBlocks.jobs.deletePhoneNumberBlock({
  phone_number_block_id: 'f3946371-7199-4261-9c3d-81a0d7935146',
});

console.log(response.data);
```

## List phone numbers

`GET /phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumberDetailed of client.phoneNumbers.list()) {
  console.log(phoneNumberDetailed.id);
}
```

## Retrieve a phone number

`GET /phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumber = await client.phoneNumbers.retrieve('1293384261075731499');

console.log(phoneNumber.data);
```

## Update a phone number

`PATCH /phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumber = await client.phoneNumbers.update('1293384261075731499');

console.log(phoneNumber.data);
```

## Delete a phone number

`DELETE /phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumber = await client.phoneNumbers.delete('1293384261075731499');

console.log(phoneNumber.data);
```

## Change the bundle status for a phone number (set to being in a bundle or remove from a bundle)

`PATCH /phone_numbers/{id}/actions/bundle_status_change`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.actions.changeBundleStatus('1293384261075731499', {
  bundle_id: '5194d8fc-87e6-4188-baa9-1c434bbe861b',
});

console.log(response.data);
```

## Enable emergency for a phone number

`POST /phone_numbers/{id}/actions/enable_emergency`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.actions.enableEmergency('1293384261075731499', {
  emergency_address_id: '53829456729313',
  emergency_enabled: true,
});

console.log(response.data);
```

## Retrieve a phone number with voice settings

`GET /phone_numbers/{id}/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.phoneNumbers.voice.retrieve('1293384261075731499');

console.log(voice.data);
```

## Update a phone number with voice settings

`PATCH /phone_numbers/{id}/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voice = await client.phoneNumbers.voice.update('1293384261075731499');

console.log(voice.data);
```

## Verify ownership of phone numbers

`POST /phone_numbers/actions/verify_ownership`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.actions.verifyOwnership({
  phone_numbers: ['+15551234567'],
});

console.log(response.data);
```

## List CSV downloads

`GET /phone_numbers/csv_downloads`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const csvDownload of client.phoneNumbers.csvDownloads.list()) {
  console.log(csvDownload.id);
}
```

## Create a CSV download

`POST /phone_numbers/csv_downloads`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const csvDownload = await client.phoneNumbers.csvDownloads.create();

console.log(csvDownload.data);
```

## Retrieve a CSV download

`GET /phone_numbers/csv_downloads/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const csvDownload = await client.phoneNumbers.csvDownloads.retrieve('id');

console.log(csvDownload.data);
```

## Lists the phone numbers jobs

`GET /phone_numbers/jobs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumbersJob of client.phoneNumbers.jobs.list()) {
  console.log(phoneNumbersJob.id);
}
```

## Retrieve a phone numbers job

`GET /phone_numbers/jobs/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const job = await client.phoneNumbers.jobs.retrieve('id');

console.log(job.data);
```

## Delete a batch of numbers

`POST /phone_numbers/jobs/delete_phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.jobs.deleteBatch({
  phone_numbers: ['+19705555098', '+19715555098', '32873127836'],
});

console.log(response.data);
```

## Update the emergency settings from a batch of numbers

`POST /phone_numbers/jobs/update_emergency_settings`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.jobs.updateEmergencySettingsBatch({
  emergency_enabled: true,
  phone_numbers: ['+19705555098', '+19715555098', '32873127836'],
});

console.log(response.data);
```

## Update a batch of numbers

`POST /phone_numbers/jobs/update_phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.phoneNumbers.jobs.updateBatch({
  phone_numbers: ['1583466971586889004', '+13127367254'],
});

console.log(response.data);
```

## Retrieve regulatory requirements for a list of phone numbers

`GET /phone_numbers/regulatory_requirements`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumbersRegulatoryRequirement =
  await client.phoneNumbersRegulatoryRequirements.retrieve();

console.log(phoneNumbersRegulatoryRequirement.data);
```

## Slim List phone numbers

`GET /phone_numbers/slim`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumberSlimListResponse of client.phoneNumbers.slimList()) {
  console.log(phoneNumberSlimListResponse.id);
}
```

## List phone numbers with voice settings

`GET /phone_numbers/voice`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumberWithVoiceSettings of client.phoneNumbers.voice.list()) {
  console.log(phoneNumberWithVoiceSettings.id);
}
```

## List Mobile Phone Numbers

`GET /v2/mobile_phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const mobilePhoneNumber of client.mobilePhoneNumbers.list()) {
  console.log(mobilePhoneNumber.id);
}
```

## Retrieve a Mobile Phone Number

`GET /v2/mobile_phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobilePhoneNumber = await client.mobilePhoneNumbers.retrieve('id');

console.log(mobilePhoneNumber.data);
```

## Update a Mobile Phone Number

`PATCH /v2/mobile_phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobilePhoneNumber = await client.mobilePhoneNumbers.update('id');

console.log(mobilePhoneNumber.data);
```
