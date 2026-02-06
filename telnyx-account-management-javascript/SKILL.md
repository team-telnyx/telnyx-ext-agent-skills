---
name: telnyx-account-management-javascript
description: >-
  Manage sub-accounts for reseller and enterprise scenarios. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: account-management
  language: javascript
---

# Telnyx Account Management - JavaScript

## Installation

```bash
npm install telnyx
```

## Lists accounts managed by the current user.

`GET /managed_accounts`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const managedAccountListResponse of client.managedAccounts.list()) {
  console.log(managedAccountListResponse.id);
}
```

## Create a new managed account.

`POST /managed_accounts`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const managedAccount = await client.managedAccounts.create({
  business_name: "Larry's Cat Food Inc",
});

console.log(managedAccount.data);
```

## Retrieve a managed account

`GET /managed_accounts/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const managedAccount = await client.managedAccounts.retrieve('id');

console.log(managedAccount.data);
```

## Update a managed account

`PATCH /managed_accounts/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const managedAccount = await client.managedAccounts.update('id');

console.log(managedAccount.data);
```

## Disables a managed account

`POST /managed_accounts/{id}/actions/disable`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.managedAccounts.actions.disable('id');

console.log(response.data);
```

## Enables a managed account

`POST /managed_accounts/{id}/actions/enable`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.managedAccounts.actions.enable('id');

console.log(response.data);
```

## Update the amount of allocatable global outbound channels allocated to a specific managed account.

`PATCH /managed_accounts/{id}/update_global_channel_limit`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.managedAccounts.updateGlobalChannelLimit('id');

console.log(response.data);
```

## Display information about allocatable global outbound channels for the current user.

`GET /managed_accounts/allocatable_global_outbound_channels`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.managedAccounts.getAllocatableGlobalOutboundChannels();

console.log(response.data);
```
