---
name: telnyx-messaging-hosted-javascript
description: >-
  Set up hosted SMS numbers, toll-free verification, and RCS messaging. Use when
  migrating numbers or enabling rich messaging features. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: messaging-hosted
  language: javascript
---

# Telnyx Messaging Hosted - JavaScript

## Installation

```bash
npm install telnyx
```

## List messaging hosted number orders

`GET /messaging_hosted_number_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const messagingHostedNumberOrder of client.messagingHostedNumberOrders.list()) {
  console.log(messagingHostedNumberOrder.id);
}
```

## Create a messaging hosted number order

`POST /messaging_hosted_number_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messagingHostedNumberOrder = await client.messagingHostedNumberOrders.create();

console.log(messagingHostedNumberOrder.data);
```

## Retrieve a messaging hosted number order

`GET /messaging_hosted_number_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messagingHostedNumberOrder = await client.messagingHostedNumberOrders.retrieve('id');

console.log(messagingHostedNumberOrder.data);
```

## Delete a messaging hosted number order

`DELETE /messaging_hosted_number_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messagingHostedNumberOrder = await client.messagingHostedNumberOrders.delete('id');

console.log(messagingHostedNumberOrder.data);
```

## Upload hosted number document

`POST /messaging_hosted_number_orders/{id}/actions/file_upload`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messagingHostedNumberOrders.actions.uploadFile('id');

console.log(response.data);
```

## Validate hosted number codes

`POST /messaging_hosted_number_orders/{id}/validation_codes`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messagingHostedNumberOrders.validateCodes('id', {
  verification_codes: [{ code: 'code', phone_number: 'phone_number' }],
});

console.log(response.data);
```

## Create hosted number verification codes

`POST /messaging_hosted_number_orders/{id}/verification_codes`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messagingHostedNumberOrders.createVerificationCodes('id', {
  phone_numbers: ['string'],
  verification_method: 'sms',
});

console.log(response.data);
```

## Check hosted messaging eligibility

`POST /messaging_hosted_number_orders/eligibility_numbers_check`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messagingHostedNumberOrders.checkEligibility({
  phone_numbers: ['string'],
});

console.log(response.phone_numbers);
```

## Delete a messaging hosted number

`DELETE /messaging_hosted_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const messagingHostedNumber = await client.messagingHostedNumbers.delete('id');

console.log(messagingHostedNumber.data);
```

## Send an RCS message

`POST /messages/rcs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messages.rcs.send({
  agent_id: 'Agent007',
  agent_message: {},
  messaging_profile_id: 'messaging_profile_id',
  to: '+13125551234',
});

console.log(response.data);
```

## List all RCS agents

`GET /messaging/rcs/agents`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const rcsAgent of client.messaging.rcs.agents.list()) {
  console.log(rcsAgent.agent_id);
}
```

## Retrieve an RCS agent

`GET /messaging/rcs/agents/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const rcsAgentResponse = await client.messaging.rcs.agents.retrieve('id');

console.log(rcsAgentResponse.data);
```

## Modify an RCS agent

`PATCH /messaging/rcs/agents/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const rcsAgentResponse = await client.messaging.rcs.agents.update('id');

console.log(rcsAgentResponse.data);
```

## Check RCS capabilities (batch)

`POST /messaging/rcs/bulk_capabilities`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging.rcs.listBulkCapabilities({
  agent_id: 'TestAgent',
  phone_numbers: ['+13125551234'],
});

console.log(response.data);
```

## Check RCS capabilities

`GET /messaging/rcs/capabilities/{agent_id}/{phone_number}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging.rcs.retrieveCapabilities('phone_number', {
  agent_id: 'agent_id',
});

console.log(response.data);
```

## Add RCS test number

`PUT /messaging/rcs/test_number_invite/{id}/{phone_number}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messaging.rcs.inviteTestNumber('phone_number', { id: 'id' });

console.log(response.data);
```

## Generate RCS deeplink

`GET /messages/rcs_deeplinks/{agent_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.messages.rcs.generateDeeplink('agent_id');

console.log(response.data);
```

## List Verification Requests

`GET /messaging_tollfree/verification/requests`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const verificationRequestStatus of client.messagingTollfree.verification.requests.list({
  page: 1,
  page_size: 1,
})) {
  console.log(verificationRequestStatus.id);
}
```

## Submit Verification Request

`POST /messaging_tollfree/verification/requests`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const verificationRequestEgress = await client.messagingTollfree.verification.requests.create({
  additionalInformation: 'additionalInformation',
  businessAddr1: '600 Congress Avenue',
  businessCity: 'Austin',
  businessContactEmail: 'email@example.com',
  businessContactFirstName: 'John',
  businessContactLastName: 'Doe',
  businessContactPhone: '+18005550100',
  businessName: 'Telnyx LLC',
  businessState: 'Texas',
  businessZip: '78701',
  corporateWebsite: 'http://example.com',
  isvReseller: 'isvReseller',
  messageVolume: '100,000',
  optInWorkflow:
    "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
  optInWorkflowImageURLs: [
    { url: 'https://telnyx.com/sign-up' },
    { url: 'https://telnyx.com/company/data-privacy' },
  ],
  phoneNumbers: [{ phoneNumber: '+18773554398' }, { phoneNumber: '+18773554399' }],
  productionMessageContent: 'Your Telnyx OTP is XXXX',
  useCase: '2FA',
  useCaseSummary:
    'This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal',
});

console.log(verificationRequestEgress.id);
```

## Get Verification Request

`GET /messaging_tollfree/verification/requests/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const verificationRequestStatus = await client.messagingTollfree.verification.requests.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(verificationRequestStatus.id);
```

## Update Verification Request

`PATCH /messaging_tollfree/verification/requests/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const verificationRequestEgress = await client.messagingTollfree.verification.requests.update(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    additionalInformation: 'additionalInformation',
    businessAddr1: '600 Congress Avenue',
    businessCity: 'Austin',
    businessContactEmail: 'email@example.com',
    businessContactFirstName: 'John',
    businessContactLastName: 'Doe',
    businessContactPhone: '+18005550100',
    businessName: 'Telnyx LLC',
    businessState: 'Texas',
    businessZip: '78701',
    corporateWebsite: 'http://example.com',
    isvReseller: 'isvReseller',
    messageVolume: '100,000',
    optInWorkflow:
      "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
    optInWorkflowImageURLs: [
      { url: 'https://telnyx.com/sign-up' },
      { url: 'https://telnyx.com/company/data-privacy' },
    ],
    phoneNumbers: [{ phoneNumber: '+18773554398' }, { phoneNumber: '+18773554399' }],
    productionMessageContent: 'Your Telnyx OTP is XXXX',
    useCase: '2FA',
    useCaseSummary:
      'This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal',
  },
);

console.log(verificationRequestEgress.id);
```

## Delete Verification Request

`DELETE /messaging_tollfree/verification/requests/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.messagingTollfree.verification.requests.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```
