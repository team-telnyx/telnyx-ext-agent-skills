---
name: telnyx-voice-advanced-javascript
description: >-
  Advanced call control features including DTMF sending, SIPREC recording, noise
  suppression, client state, and supervisor controls. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: voice-advanced
  language: javascript
---

# Telnyx Voice Advanced - JavaScript

## Installation

```bash
npm install telnyx
```

## Update client state

`PUT /calls/{call_control_id}/actions/client_state_update`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.updateClientState('call_control_id', {
  client_state: 'aGF2ZSBhIG5pY2UgZGF5ID1d',
});

console.log(response.data);
```

## Send DTMF

`POST /calls/{call_control_id}/actions/send_dtmf`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.sendDtmf('call_control_id', { digits: '1www2WABCDw9' });

console.log(response.data);
```

## SIPREC start

`POST /calls/{call_control_id}/actions/siprec_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startSiprec('call_control_id');

console.log(response.data);
```

## SIPREC stop

`POST /calls/{call_control_id}/actions/siprec_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopSiprec('call_control_id');

console.log(response.data);
```

## Noise Suppression Start (BETA)

`POST /calls/{call_control_id}/actions/suppression_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startNoiseSuppression('call_control_id');

console.log(response.data);
```

## Noise Suppression Stop (BETA)

`POST /calls/{call_control_id}/actions/suppression_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopNoiseSuppression('call_control_id');

console.log(response.data);
```

## Switch supervisor role

`POST /calls/{call_control_id}/actions/switch_supervisor_role`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.switchSupervisorRole('call_control_id', {
  role: 'barge',
});

console.log(response.data);
```
