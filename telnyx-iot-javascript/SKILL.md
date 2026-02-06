---
name: telnyx-iot-javascript
description: >-
  Manage IoT SIM cards, eSIMs, data plans, and wireless connectivity. Use when
  building IoT/M2M solutions. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: iot
  language: javascript
---

# Telnyx Iot - JavaScript

## Installation

```bash
npm install telnyx
```

## Get all wireless regions

`GET /wireless/regions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.wireless.retrieveRegions({ product: 'public_ips' });

console.log(response.data);
```

## Get all SIM cards

`GET /sim_cards`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simpleSimCard of client.simCards.list()) {
  console.log(simpleSimCard.id);
}
```

## Get SIM card

`GET /sim_cards/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCard = await client.simCards.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCard.data);
```

## Update a SIM card

`PATCH /sim_cards/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCard = await client.simCards.update('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCard.data);
```

## Deletes a SIM card

`DELETE /sim_cards/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCard = await client.simCards.delete('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCard.data);
```

## Get activation code for an eSIM

`GET /sim_cards/{id}/activation_code`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.getActivationCode('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Get SIM card device details

`GET /sim_cards/{id}/device_details`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.getDeviceDetails('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Get SIM card public IP definition

`GET /sim_cards/{id}/public_ip`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.getPublicIP('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## List wireless connectivity logs

`GET /sim_cards/{id}/wireless_connectivity_logs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardListWirelessConnectivityLogsResponse of client.simCards.listWirelessConnectivityLogs(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
)) {
  console.log(simCardListWirelessConnectivityLogsResponse.id);
}
```

## Request a SIM card disable

`POST /sim_cards/{id}/actions/disable`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.disable('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Request a SIM card enable

`POST /sim_cards/{id}/actions/enable`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.enable('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Request removing a SIM card public IP

`POST /sim_cards/{id}/actions/remove_public_ip`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.removePublicIP(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(response.data);
```

## Request setting a SIM card public IP

`POST /sim_cards/{id}/actions/set_public_ip`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.setPublicIP('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Request setting a SIM card to standby

`POST /sim_cards/{id}/actions/set_standby`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.setStandby('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(response.data);
```

## Request bulk setting SIM card public IPs.

`POST /sim_cards/actions/bulk_set_public_ips`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.bulkSetPublicIPs({
  sim_card_ids: ['6b14e151-8493-4fa1-8664-1cc4e6d14158'],
});

console.log(response.data);
```

## Validate SIM cards registration codes

`POST /sim_cards/actions/validate_registration_codes`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCards.actions.validateRegistrationCodes();

console.log(response.data);
```

## List SIM card actions

`GET /sim_card_actions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardAction of client.simCards.actions.list()) {
  console.log(simCardAction.id);
}
```

## Get SIM card action details

`GET /sim_card_actions/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const action = await client.simCards.actions.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(action.data);
```

## List bulk SIM card actions

`GET /bulk_sim_card_actions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const bulkSimCardActionListResponse of client.bulkSimCardActions.list()) {
  console.log(bulkSimCardActionListResponse.id);
}
```

## Get bulk SIM card action details

`GET /bulk_sim_card_actions/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const bulkSimCardAction = await client.bulkSimCardActions.retrieve(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(bulkSimCardAction.data);
```

## Get all SIM card groups

`GET /sim_card_groups`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardGroupListResponse of client.simCardGroups.list()) {
  console.log(simCardGroupListResponse.id);
}
```

## Create a SIM card group

`POST /sim_card_groups`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardGroup = await client.simCardGroups.create({ name: 'My Test Group' });

console.log(simCardGroup.data);
```

## Get SIM card group

`GET /sim_card_groups/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardGroup = await client.simCardGroups.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCardGroup.data);
```

## Update a SIM card group

`PATCH /sim_card_groups/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardGroup = await client.simCardGroups.update('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCardGroup.data);
```

## Delete a SIM card group

`DELETE /sim_card_groups/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardGroup = await client.simCardGroups.delete('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCardGroup.data);
```

## Request Private Wireless Gateway removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_private_wireless_gateway`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCardGroups.actions.removePrivateWirelessGateway(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(response.data);
```

## Request Wireless Blocklist removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_wireless_blocklist`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCardGroups.actions.removeWirelessBlocklist(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(response.data);
```

## Request Private Wireless Gateway assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_private_wireless_gateway`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCardGroups.actions.setPrivateWirelessGateway(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { private_wireless_gateway_id: '6a09cdc3-8948-47f0-aa62-74ac943d6c58' },
);

console.log(response.data);
```

## Request Wireless Blocklist assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_wireless_blocklist`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCardGroups.actions.setWirelessBlocklist(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { wireless_blocklist_id: '6a09cdc3-8948-47f0-aa62-74ac943d6c58' },
);

console.log(response.data);
```

## List SIM card group actions

`GET /sim_card_group_actions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardGroupAction of client.simCardGroups.actions.list()) {
  console.log(simCardGroupAction.id);
}
```

## Get SIM card group action details

`GET /sim_card_group_actions/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const action = await client.simCardGroups.actions.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(action.data);
```

## Get all SIM card orders

`GET /sim_card_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardOrder of client.simCardOrders.list()) {
  console.log(simCardOrder.id);
}
```

## Create a SIM card order

`POST /sim_card_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardOrder = await client.simCardOrders.create({
  address_id: '1293384261075731499',
  quantity: 23,
});

console.log(simCardOrder.data);
```

## Get a single SIM card order

`GET /sim_card_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardOrder = await client.simCardOrders.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(simCardOrder.data);
```

## Preview SIM card orders

`POST /sim_card_order_preview`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.simCardOrderPreview.preview({
  address_id: '1293384261075731499',
  quantity: 21,
});

console.log(response.data);
```

## List SIM card data usage notifications

`GET /sim_card_data_usage_notifications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const simCardDataUsageNotification of client.simCardDataUsageNotifications.list()) {
  console.log(simCardDataUsageNotification.id);
}
```

## Create a new SIM card data usage notification

`POST /sim_card_data_usage_notifications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardDataUsageNotification = await client.simCardDataUsageNotifications.create({
  sim_card_id: '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  threshold: {},
});

console.log(simCardDataUsageNotification.data);
```

## Get a single SIM card data usage notification

`GET /sim_card_data_usage_notifications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardDataUsageNotification = await client.simCardDataUsageNotifications.retrieve(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(simCardDataUsageNotification.data);
```

## Updates information for a SIM Card Data Usage Notification

`PATCH /sim_card_data_usage_notifications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardDataUsageNotification = await client.simCardDataUsageNotifications.update(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(simCardDataUsageNotification.data);
```

## Delete SIM card data usage notifications

`DELETE /sim_card_data_usage_notifications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const simCardDataUsageNotification = await client.simCardDataUsageNotifications.delete(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(simCardDataUsageNotification.data);
```

## Purchase eSIMs

`POST /actions/purchase/esims`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const purchase = await client.actions.purchase.create({ amount: 10 });

console.log(purchase.data);
```

## Register SIM cards

`POST /actions/register/sim_cards`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const register = await client.actions.register.create({
  registration_codes: ['0000000001', '0000000002', '0000000003'],
});

console.log(register.data);
```

## List OTA updates

`GET /ota_updates`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const otaUpdateListResponse of client.otaUpdates.list()) {
  console.log(otaUpdateListResponse.id);
}
```

## Get OTA update

`GET /ota_updates/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const otaUpdate = await client.otaUpdates.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(otaUpdate.data);
```

## Get all Private Wireless Gateways

`GET /private_wireless_gateways`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const privateWirelessGateway of client.privateWirelessGateways.list()) {
  console.log(privateWirelessGateway.id);
}
```

## Create a Private Wireless Gateway

`POST /private_wireless_gateways`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const privateWirelessGateway = await client.privateWirelessGateways.create({
  name: 'My private wireless gateway',
  network_id: '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
});

console.log(privateWirelessGateway.data);
```

## Get a Private Wireless Gateway

`GET /private_wireless_gateways/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const privateWirelessGateway = await client.privateWirelessGateways.retrieve(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(privateWirelessGateway.data);
```

## Delete a Private Wireless Gateway

`DELETE /private_wireless_gateways/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const privateWirelessGateway = await client.privateWirelessGateways.delete(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(privateWirelessGateway.data);
```

## Get all Wireless Blocklists

`GET /wireless_blocklists`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const wirelessBlocklist of client.wirelessBlocklists.list()) {
  console.log(wirelessBlocklist.id);
}
```

## Create a Wireless Blocklist

`POST /wireless_blocklists`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const wirelessBlocklist = await client.wirelessBlocklists.create({
  name: 'My Wireless Blocklist',
  type: 'country',
  values: ['CA', 'US'],
});

console.log(wirelessBlocklist.data);
```

## Update a Wireless Blocklist

`PATCH /wireless_blocklists`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const wirelessBlocklist = await client.wirelessBlocklists.update();

console.log(wirelessBlocklist.data);
```

## Get a Wireless Blocklist

`GET /wireless_blocklists/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const wirelessBlocklist = await client.wirelessBlocklists.retrieve(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(wirelessBlocklist.data);
```

## Delete a Wireless Blocklist

`DELETE /wireless_blocklists/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const wirelessBlocklist = await client.wirelessBlocklists.delete(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(wirelessBlocklist.data);
```

## Get all possible wireless blocklist values

`GET /wireless_blocklist_values`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const wirelessBlocklistValues = await client.wirelessBlocklistValues.list({ type: 'country' });

console.log(wirelessBlocklistValues.data);
```
