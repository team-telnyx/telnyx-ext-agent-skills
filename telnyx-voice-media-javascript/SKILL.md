---
name: telnyx-voice-media-javascript
description: >-
  Play audio files, use text-to-speech, and record calls. Use when building IVR
  systems, playing announcements, or recording conversations. This skill
  provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: voice-media
  language: javascript
---

# Telnyx Voice Media - JavaScript

## Installation

```bash
npm install telnyx
```

## Play audio URL

`POST /calls/{call_control_id}/actions/playback_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startPlayback('call_control_id');

console.log(response.data);
```

## Stop audio playback

`POST /calls/{call_control_id}/actions/playback_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopPlayback('call_control_id');

console.log(response.data);
```

## Record pause

`POST /calls/{call_control_id}/actions/record_pause`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.pauseRecording('call_control_id');

console.log(response.data);
```

## Record resume

`POST /calls/{call_control_id}/actions/record_resume`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.resumeRecording('call_control_id');

console.log(response.data);
```

## Recording start

`POST /calls/{call_control_id}/actions/record_start`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.startRecording('call_control_id', {
  channels: 'single',
  format: 'wav',
});

console.log(response.data);
```

## Recording stop

`POST /calls/{call_control_id}/actions/record_stop`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.stopRecording('call_control_id');

console.log(response.data);
```

## Speak text

`POST /calls/{call_control_id}/actions/speak`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.calls.actions.speak('call_control_id', {
  payload: 'Say this on the call',
  voice: 'female',
});

console.log(response.data);
```
