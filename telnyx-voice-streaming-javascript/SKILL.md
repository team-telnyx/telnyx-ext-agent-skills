---
name: telnyx-voice-streaming-javascript
description: >-
  Stream call audio in real-time, fork media to external destinations, and
  transcribe speech live. Use for real-time analytics and AI integrations. This
  skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: voice-streaming
  language: javascript
---

# Telnyx Voice Streaming - JavaScript

## Installation

```bash
npm install telnyx
```

## Forking start

`POST /calls/{call_control_id}/actions/fork_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startForking('call_control_id');

console.log(response.data);
```

## Forking stop

`POST /calls/{call_control_id}/actions/fork_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopForking('call_control_id');

console.log(response.data);
```

## Streaming start

`POST /calls/{call_control_id}/actions/streaming_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startStreaming('call_control_id');

console.log(response.data);
```

## Streaming stop

`POST /calls/{call_control_id}/actions/streaming_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopStreaming('call_control_id');

console.log(response.data);
```

## Transcription start

`POST /calls/{call_control_id}/actions/transcription_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startTranscription('call_control_id');

console.log(response.data);
```

## Transcription stop

`POST /calls/{call_control_id}/actions/transcription_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopTranscription('call_control_id');

console.log(response.data);
```
