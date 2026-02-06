---
name: telnyx-voice-gather-javascript
description: >-
  Collect DTMF input and speech from callers using standard gather or AI-powered
  gather. Build interactive voice menus and AI voice assistants. This skill
  provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: voice-gather
  language: javascript
---

# Telnyx Voice Gather - JavaScript

## Installation

```bash
npm install telnyx
```

## Add messages to AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_add_messages`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.addAIAssistantMessages('call_control_id');

console.log(response.data);
```

## Start AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startAIAssistant('call_control_id');

console.log(response.data);
```

## Stop AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopAIAssistant('call_control_id');

console.log(response.data);
```

## Gather stop

`POST /calls/{call_control_id}/actions/gather_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopGather('call_control_id');

console.log(response.data);
```

## Gather using AI

`POST /calls/{call_control_id}/actions/gather_using_ai`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.gatherUsingAI('call_control_id', {
  parameters: {
    properties: 'bar',
    required: 'bar',
    type: 'bar',
  },
});

console.log(response.data);
```

## Gather using audio

`POST /calls/{call_control_id}/actions/gather_using_audio`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.gatherUsingAudio('call_control_id');

console.log(response.data);
```

## Gather using speak

`POST /calls/{call_control_id}/actions/gather_using_speak`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.gatherUsingSpeak('call_control_id', {
  payload: 'say this on call',
  voice: 'male',
});

console.log(response.data);
```

## Gather

`POST /calls/{call_control_id}/actions/gather`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.gather('call_control_id');

console.log(response.data);
```
