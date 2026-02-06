---
name: telnyx-porting-in-javascript
description: >-
  Port phone numbers into Telnyx. Check portability, create port orders, upload
  LOA documents, and track porting status. This skill provides JavaScript SDK
  examples.
metadata:
  author: telnyx
  product: porting-in
  language: javascript
---

# Telnyx Porting In - JavaScript

## Installation

```bash
npm install telnyx
```

## List all porting events

`GET /porting/events`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const eventListResponse of client.porting.events.list()) {
  console.log(eventListResponse);
}
```

## Show a porting event

`GET /porting/events/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const event = await client.porting.events.retrieve('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(event.data);
```

## Republish a porting event

`POST /porting/events/{id}/republish`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.porting.events.republish('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Preview the LOA configuration parameters

`POST /porting/loa_configuration_preview`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.porting.loaConfigurations.preview0({
  address: {
    city: 'Austin',
    country_code: 'US',
    state: 'TX',
    street_address: '600 Congress Avenue',
    zip_code: '78701',
  },
  company_name: 'Telnyx',
  contact: { email: 'testing@telnyx.com', phone_number: '+12003270001' },
  logo: { document_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
  name: 'My LOA Configuration',
});

console.log(response);

const content = await response.blob();
console.log(content);
```

## List LOA configurations

`GET /porting/loa_configurations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingLoaConfiguration of client.porting.loaConfigurations.list()) {
  console.log(portingLoaConfiguration.id);
}
```

## Create a LOA configuration

`POST /porting/loa_configurations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const loaConfiguration = await client.porting.loaConfigurations.create({
  address: {
    city: 'Austin',
    country_code: 'US',
    state: 'TX',
    street_address: '600 Congress Avenue',
    zip_code: '78701',
  },
  company_name: 'Telnyx',
  contact: { email: 'testing@telnyx.com', phone_number: '+12003270001' },
  logo: { document_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
  name: 'My LOA Configuration',
});

console.log(loaConfiguration.data);
```

## Retrieve a LOA configuration

`GET /porting/loa_configurations/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const loaConfiguration = await client.porting.loaConfigurations.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(loaConfiguration.data);
```

## Update a LOA configuration

`PATCH /porting/loa_configurations/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const loaConfiguration = await client.porting.loaConfigurations.update(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    address: {
      city: 'Austin',
      country_code: 'US',
      state: 'TX',
      street_address: '600 Congress Avenue',
      zip_code: '78701',
    },
    company_name: 'Telnyx',
    contact: { email: 'testing@telnyx.com', phone_number: '+12003270001' },
    logo: { document_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
    name: 'My LOA Configuration',
  },
);

console.log(loaConfiguration.data);
```

## Delete a LOA configuration

`DELETE /porting/loa_configurations/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.porting.loaConfigurations.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Preview a LOA configuration

`GET /porting/loa_configurations/{id}/preview`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.porting.loaConfigurations.preview1(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response);

const content = await response.blob();
console.log(content);
```

## List all porting orders

`GET /porting_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingOrder of client.portingOrders.list()) {
  console.log(portingOrder.id);
}
```

## Create a porting order

`POST /porting_orders`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const portingOrder = await client.portingOrders.create({
  phone_numbers: ['+13035550000', '+13035550001', '+13035550002'],
});

console.log(portingOrder.data);
```

## Retrieve a porting order

`GET /porting_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const portingOrder = await client.portingOrders.retrieve('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(portingOrder.data);
```

## Edit a porting order

`PATCH /porting_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const portingOrder = await client.portingOrders.update('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(portingOrder.data);
```

## Delete a porting order

`DELETE /porting_orders/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.portingOrders.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Activate every number in a porting order asynchronously.

`POST /porting_orders/{id}/actions/activate`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.actions.activate(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response.data);
```

## Cancel a porting order

`POST /porting_orders/{id}/actions/cancel`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.actions.cancel('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(response.data);
```

## Submit a porting order.

`POST /porting_orders/{id}/actions/confirm`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.actions.confirm('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(response.data);
```

## Share a porting order

`POST /porting_orders/{id}/actions/share`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.actions.share('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(response.data);
```

## List all porting activation jobs

`GET /porting_orders/{id}/activation_jobs`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingOrdersActivationJob of client.portingOrders.activationJobs.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(portingOrdersActivationJob.id);
}
```

## Retrieve a porting activation job

`GET /porting_orders/{id}/activation_jobs/{activationJobId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const activationJob = await client.portingOrders.activationJobs.retrieve(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);

console.log(activationJob.data);
```

## Update a porting activation job

`PATCH /porting_orders/{id}/activation_jobs/{activationJobId}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const activationJob = await client.portingOrders.activationJobs.update(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);

console.log(activationJob.data);
```

## List additional documents

`GET /porting_orders/{id}/additional_documents`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const additionalDocumentListResponse of client.portingOrders.additionalDocuments.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(additionalDocumentListResponse.id);
}
```

## Create a list of additional documents

`POST /porting_orders/{id}/additional_documents`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const additionalDocument = await client.portingOrders.additionalDocuments.create(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(additionalDocument.data);
```

## Delete an additional document

`DELETE /porting_orders/{id}/additional_documents/{additional_document_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.portingOrders.additionalDocuments.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e', {
  id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
});
```

## List allowed FOC dates

`GET /porting_orders/{id}/allowed_foc_windows`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.retrieveAllowedFocWindows(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response.data);
```

## List all comments of a porting order

`GET /porting_orders/{id}/comments`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const commentListResponse of client.portingOrders.comments.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(commentListResponse.id);
}
```

## Create a comment for a porting order

`POST /porting_orders/{id}/comments`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const comment = await client.portingOrders.comments.create('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(comment.data);
```

## Download a porting order loa template

`GET /porting_orders/{id}/loa_template`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.retrieveLoaTemplate(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response);

const content = await response.blob();
console.log(content);
```

## List porting order requirements

`GET /porting_orders/{id}/requirements`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingOrderRetrieveRequirementsResponse of client.portingOrders.retrieveRequirements(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(portingOrderRetrieveRequirementsResponse.field_type);
}
```

## Retrieve the associated V1 sub_request_id and port_request_id

`GET /porting_orders/{id}/sub_request`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.retrieveSubRequest(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response.data);
```

## List verification codes

`GET /porting_orders/{id}/verification_codes`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const verificationCodeListResponse of client.portingOrders.verificationCodes.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(verificationCodeListResponse.id);
}
```

## Send the verification codes

`POST /porting_orders/{id}/verification_codes/send`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.portingOrders.verificationCodes.send('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Verify the verification code for a list of phone numbers

`POST /porting_orders/{id}/verification_codes/verify`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.verificationCodes.verify(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
);

console.log(response.data);
```

## List action requirements for a porting order

`GET /porting_orders/{porting_order_id}/action_requirements`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const actionRequirementListResponse of client.portingOrders.actionRequirements.list(
  'porting_order_id',
)) {
  console.log(actionRequirementListResponse.id);
}
```

## Initiate an action requirement

`POST /porting_orders/{porting_order_id}/action_requirements/{id}/initiate`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.actionRequirements.initiate('id', {
  porting_order_id: 'porting_order_id',
  params: { first_name: 'John', last_name: 'Doe' },
});

console.log(response.data);
```

## List all associated phone numbers

`GET /porting_orders/{porting_order_id}/associated_phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingAssociatedPhoneNumber of client.portingOrders.associatedPhoneNumbers.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(portingAssociatedPhoneNumber.id);
}
```

## Create an associated phone number

`POST /porting_orders/{porting_order_id}/associated_phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const associatedPhoneNumber = await client.portingOrders.associatedPhoneNumbers.create(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    action: 'keep',
    phone_number_range: {},
  },
);

console.log(associatedPhoneNumber.data);
```

## Delete an associated phone number

`DELETE /porting_orders/{porting_order_id}/associated_phone_numbers/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const associatedPhoneNumber = await client.portingOrders.associatedPhoneNumbers.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { porting_order_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);

console.log(associatedPhoneNumber.data);
```

## List all phone number blocks

`GET /porting_orders/{porting_order_id}/phone_number_blocks`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingPhoneNumberBlock of client.portingOrders.phoneNumberBlocks.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(portingPhoneNumberBlock.id);
}
```

## Create a phone number block

`POST /porting_orders/{porting_order_id}/phone_number_blocks`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberBlock = await client.portingOrders.phoneNumberBlocks.create(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    activation_ranges: [{ end_at: '+4930244999910', start_at: '+4930244999901' }],
    phone_number_range: { end_at: '+4930244999910', start_at: '+4930244999901' },
  },
);

console.log(phoneNumberBlock.data);
```

## Delete a phone number block

`DELETE /porting_orders/{porting_order_id}/phone_number_blocks/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberBlock = await client.portingOrders.phoneNumberBlocks.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { porting_order_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);

console.log(phoneNumberBlock.data);
```

## List all phone number extensions

`GET /porting_orders/{porting_order_id}/phone_number_extensions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingPhoneNumberExtension of client.portingOrders.phoneNumberExtensions.list(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
)) {
  console.log(portingPhoneNumberExtension.id);
}
```

## Create a phone number extension

`POST /porting_orders/{porting_order_id}/phone_number_extensions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberExtension = await client.portingOrders.phoneNumberExtensions.create(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    activation_ranges: [{ end_at: 10, start_at: 1 }],
    extension_range: { end_at: 10, start_at: 1 },
    porting_phone_number_id: 'f24151b6-3389-41d3-8747-7dd8c681e5e2',
  },
);

console.log(phoneNumberExtension.data);
```

## Delete a phone number extension

`DELETE /porting_orders/{porting_order_id}/phone_number_extensions/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberExtension = await client.portingOrders.phoneNumberExtensions.delete(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  { porting_order_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e' },
);

console.log(phoneNumberExtension.data);
```

## List all exception types

`GET /porting_orders/exception_types`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portingOrders.retrieveExceptionTypes();

console.log(response.data);
```

## List all phone number configurations

`GET /porting_orders/phone_number_configurations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const phoneNumberConfigurationListResponse of client.portingOrders.phoneNumberConfigurations.list()) {
  console.log(phoneNumberConfigurationListResponse.id);
}
```

## Create a list of phone number configurations

`POST /porting_orders/phone_number_configurations`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumberConfiguration = await client.portingOrders.phoneNumberConfigurations.create();

console.log(phoneNumberConfiguration.data);
```

## List all porting phone numbers

`GET /porting/phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingPhoneNumberListResponse of client.portingPhoneNumbers.list()) {
  console.log(portingPhoneNumberListResponse.porting_order_id);
}
```

## List porting related reports

`GET /porting/reports`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const portingReport of client.porting.reports.list()) {
  console.log(portingReport.id);
}
```

## Create a porting related report

`POST /porting/reports`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const report = await client.porting.reports.create({
  params: { filters: {} },
  report_type: 'export_porting_orders_csv',
});

console.log(report.data);
```

## Retrieve a report

`GET /porting/reports/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const report = await client.porting.reports.retrieve('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(report.data);
```

## List available carriers in the UK

`GET /porting/uk_carriers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.porting.listUkCarriers();

console.log(response.data);
```

## Run a portability check

`POST /portability_checks`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.portabilityChecks.run();

console.log(response.data);
```
