---
name: telnyx-voice-javascript
description: >-
  Make and receive calls, transfer, bridge, and manage call lifecycle with Call
  Control. Includes application management and call events. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: voice
  language: javascript
---

# Telnyx Voice - JavaScript

## Installation

```bash
npm install telnyx
```

## Answer call

`POST /calls/{call_control_id}/actions/answer`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.answer('call_control_id');

console.log(response.data);
```

## Bridge calls

`POST /calls/{call_control_id}/actions/bridge`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.bridge('call_control_id', {
  call_control_id_to_bridge_with: 'v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg',
});

console.log(response.data);
```

## Dial

`POST /calls`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.dial({
  connection_id: '7267xxxxxxxxxxxxxx',
  from: '+18005550101',
  to: '+18005550100 or sip:username@sip.telnyx.com',
});

console.log(response.data);
```

## Hangup call

`POST /calls/{call_control_id}/actions/hangup`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.hangup('call_control_id');

console.log(response.data);
```

## Transfer call

`POST /calls/{call_control_id}/actions/transfer`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.transfer('call_control_id', {
  to: '+18005550100 or sip:username@sip.telnyx.com',
});

console.log(response.data);
```

## List all active calls for given connection

`GET /connections/{connection_id}/active_calls`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const connectionListActiveCallsResponse of client.connections.listActiveCalls(
  '1293384261075731461',
)) {
  console.log(connectionListActiveCallsResponse.call_control_id);
}
```

## List call control applications

`GET /call_control_applications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const callControlApplication of client.callControlApplications.list()) {
  console.log(callControlApplication.id);
}
```

## Create a call control application

`POST /call_control_applications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const callControlApplication = await client.callControlApplications.create({
  application_name: 'call-router',
  webhook_event_url: 'https://example.com',
});

console.log(callControlApplication.data);
```

## Retrieve a call control application

`GET /call_control_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const callControlApplication = await client.callControlApplications.retrieve('id');

console.log(callControlApplication.data);
```

## Update a call control application

`PATCH /call_control_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const callControlApplication = await client.callControlApplications.update('id', {
  application_name: 'call-router',
  webhook_event_url: 'https://example.com',
});

console.log(callControlApplication.data);
```

## Delete a call control application

`DELETE /call_control_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const callControlApplication = await client.callControlApplications.delete('id');

console.log(callControlApplication.data);
```

## List call events

`GET /call_events`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const callEventListResponse of client.callEvents.list()) {
  console.log(callEventListResponse.call_leg_id);
}
```
