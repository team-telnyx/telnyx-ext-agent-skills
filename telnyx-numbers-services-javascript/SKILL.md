---
name: telnyx-numbers-services-javascript
description: >-
  Configure voicemail, voice channels, and emergency (E911) services for your
  phone numbers. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: numbers-services
  language: javascript
---

# Telnyx Numbers Services - JavaScript

## Installation

```bash
npm install telnyx
```

## List dynamic emergency addresses

`GET /dynamic_emergency_addresses`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const dynamicEmergencyAddress of client.dynamicEmergencyAddresses.list()) {
  console.log(dynamicEmergencyAddress.id);
}
```

## Create a dynamic emergency address.

`POST /dynamic_emergency_addresses`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyAddress = await client.dynamicEmergencyAddresses.create({
  administrative_area: 'TX',
  country_code: 'US',
  house_number: '600',
  locality: 'Austin',
  postal_code: '78701',
  street_name: 'Congress',
});

console.log(dynamicEmergencyAddress.data);
```

## Get a dynamic emergency address

`GET /dynamic_emergency_addresses/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyAddress = await client.dynamicEmergencyAddresses.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(dynamicEmergencyAddress.data);
```

## Delete a dynamic emergency address

`DELETE /dynamic_emergency_addresses/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyAddress = await client.dynamicEmergencyAddresses.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(dynamicEmergencyAddress.data);
```

## List dynamic emergency endpoints

`GET /dynamic_emergency_endpoints`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const dynamicEmergencyEndpoint of client.dynamicEmergencyEndpoints.list()) {
  console.log(dynamicEmergencyEndpoint.dynamic_emergency_address_id);
}
```

## Create a dynamic emergency endpoint.

`POST /dynamic_emergency_endpoints`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyEndpoint = await client.dynamicEmergencyEndpoints.create({
  callback_number: '+13125550000',
  caller_name: 'Jane Doe Desk Phone',
  dynamic_emergency_address_id: '0ccc7b54-4df3-4bca-a65a-3da1ecc777f0',
});

console.log(dynamicEmergencyEndpoint.data);
```

## Get a dynamic emergency endpoint

`GET /dynamic_emergency_endpoints/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyEndpoint = await client.dynamicEmergencyEndpoints.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(dynamicEmergencyEndpoint.data);
```

## Delete a dynamic emergency endpoint

`DELETE /dynamic_emergency_endpoints/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dynamicEmergencyEndpoint = await client.dynamicEmergencyEndpoints.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(dynamicEmergencyEndpoint.data);
```

## List your voice channels for non-US zones

`GET /channel_zones`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const channelZoneListResponse of client.channelZones.list()) {
  console.log(channelZoneListResponse.id);
}
```

## Update voice channels for non-US Zones

`PUT /channel_zones/{channel_zone_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const channelZone = await client.channelZones.update('channel_zone_id', { channels: 0 });

console.log(channelZone.id);
```

## List your voice channels for US Zone

`GET /inbound_channels`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inboundChannels = await client.inboundChannels.list();

console.log(inboundChannels.data);
```

## Update voice channels for US Zone

`PATCH /inbound_channels`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const inboundChannel = await client.inboundChannels.update({ channels: 7 });

console.log(inboundChannel.data);
```

## List All Numbers using Channel Billing

`GET /list`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.list.retrieveAll();

console.log(response.data);
```

## List Numbers using Channel Billing for a specific Zone

`GET /list/{channel_zone_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.list.retrieveByZone('channel_zone_id');

console.log(response.data);
```

## Get voicemail

`GET /phone_numbers/{phone_number_id}/voicemail`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voicemail = await client.phoneNumbers.voicemail.retrieve('123455678900');

console.log(voicemail.data);
```

## Create voicemail

`POST /phone_numbers/{phone_number_id}/voicemail`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voicemail = await client.phoneNumbers.voicemail.create('123455678900');

console.log(voicemail.data);
```

## Update voicemail

`PATCH /phone_numbers/{phone_number_id}/voicemail`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const voicemail = await client.phoneNumbers.voicemail.update('123455678900');

console.log(voicemail.data);
```
