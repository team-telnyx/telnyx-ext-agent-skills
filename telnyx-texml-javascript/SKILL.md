---
name: telnyx-texml-javascript
description: >-
  Build voice applications using TeXML markup language (TwiML-compatible).
  Manage applications, calls, conferences, recordings, queues, and streams. This
  skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: texml
  language: javascript
---

# Telnyx Texml - JavaScript

## Installation

```bash
npm install telnyx
```

## List all TeXML Applications

`GET /texml_applications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const texmlApplication of client.texmlApplications.list()) {
  console.log(texmlApplication.id);
}
```

## Creates a TeXML Application

`POST /texml_applications`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const texmlApplication = await client.texmlApplications.create({
  friendly_name: 'call-router',
  voice_url: 'https://example.com',
});

console.log(texmlApplication.data);
```

## Retrieve a TeXML Application

`GET /texml_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const texmlApplication = await client.texmlApplications.retrieve('1293384261075731499');

console.log(texmlApplication.data);
```

## Update a TeXML Application

`PATCH /texml_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const texmlApplication = await client.texmlApplications.update('1293384261075731499', {
  friendly_name: 'call-router',
  voice_url: 'https://example.com',
});

console.log(texmlApplication.data);
```

## Deletes a TeXML Application

`DELETE /texml_applications/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const texmlApplication = await client.texmlApplications.delete('1293384261075731499');

console.log(texmlApplication.data);
```

## Fetch multiple call resources

`GET /texml/Accounts/{account_sid}/Calls`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.retrieveCalls('account_sid');

console.log(response.calls);
```

## Initiate an outbound call

`POST /texml/Accounts/{account_sid}/Calls`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.calls('account_sid', {
  ApplicationSid: 'example-app-sid',
  From: '+13120001234',
  To: '+13121230000',
});

console.log(response.from);
```

## Fetch a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const call = await client.texml.accounts.calls.retrieve('call_sid', { account_sid: 'account_sid' });

console.log(call.account_sid);
```

## Update call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const call = await client.texml.accounts.calls.update('call_sid', { account_sid: 'account_sid' });

console.log(call.account_sid);
```

## List conference participants

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.conferences.participants.retrieveParticipants(
  'conference_sid',
  { account_sid: 'account_sid' },
);

console.log(response.end);
```

## Dial a new conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.conferences.participants.participants(
  'conference_sid',
  { account_sid: 'account_sid' },
);

console.log(response.account_sid);
```

## Get conference participant resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const participant = await client.texml.accounts.conferences.participants.retrieve(
  'call_sid_or_participant_label',
  { account_sid: 'account_sid', conference_sid: 'conference_sid' },
);

console.log(participant.account_sid);
```

## Update a conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const participant = await client.texml.accounts.conferences.participants.update(
  'call_sid_or_participant_label',
  { account_sid: 'account_sid', conference_sid: 'conference_sid' },
);

console.log(participant.account_sid);
```

## Delete a conference participant

`DELETE /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.texml.accounts.conferences.participants.delete('call_sid_or_participant_label', {
  account_sid: 'account_sid',
  conference_sid: 'conference_sid',
});
```

## List conference resources

`GET /texml/Accounts/{account_sid}/Conferences`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.conferences.retrieveConferences('account_sid');

console.log(response.conferences);
```

## Fetch a conference resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conference = await client.texml.accounts.conferences.retrieve('conference_sid', {
  account_sid: 'account_sid',
});

console.log(conference.account_sid);
```

## Update a conference resource

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const conference = await client.texml.accounts.conferences.update('conference_sid', {
  account_sid: 'account_sid',
});

console.log(conference.account_sid);
```

## List queue resources

`GET /texml/Accounts/{account_sid}/Queues`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const queueListResponse of client.texml.accounts.queues.list('account_sid')) {
  console.log(queueListResponse.account_sid);
}
```

## Create a new queue

`POST /texml/Accounts/{account_sid}/Queues`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const queue = await client.texml.accounts.queues.create('account_sid');

console.log(queue.account_sid);
```

## Fetch a queue resource

`GET /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const queue = await client.texml.accounts.queues.retrieve('queue_sid', {
  account_sid: 'account_sid',
});

console.log(queue.account_sid);
```

## Update a queue resource

`POST /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const queue = await client.texml.accounts.queues.update('queue_sid', {
  account_sid: 'account_sid',
});

console.log(queue.account_sid);
```

## Delete a queue resource

`DELETE /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.texml.accounts.queues.delete('queue_sid', { account_sid: 'account_sid' });
```

## Fetch multiple recording resources

`GET /texml/Accounts/{account_sid}/Recordings.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.retrieveRecordingsJson('account_sid');

console.log(response.end);
```

## Fetch recording resource

`GET /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const texmlGetCallRecordingResponseBody =
  await client.texml.accounts.recordings.json.retrieveRecordingSidJson(
    '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
    { account_sid: 'account_sid' },
  );

console.log(texmlGetCallRecordingResponseBody.account_sid);
```

## Delete recording resource

`DELETE /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.texml.accounts.recordings.json.deleteRecordingSidJson(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { account_sid: 'account_sid' },
);
```

## Fetch recordings for a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.recordingsJson.retrieveRecordingsJson(
  'call_sid',
  { account_sid: 'account_sid' },
);

console.log(response.end);
```

## Request recording for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.recordingsJson.recordingsJson('call_sid', {
  account_sid: 'account_sid',
});

console.log(response.account_sid);
```

## Update recording on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings/{recording_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.recordings.recordingSidJson(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { account_sid: 'account_sid', call_sid: 'call_sid' },
);

console.log(response.account_sid);
```

## List conference recordings

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.conferences.retrieveRecordings('conference_sid', {
  account_sid: 'account_sid',
});

console.log(response.end);
```

## Fetch recordings for a conference

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.conferences.retrieveRecordingsJson('conference_sid', {
  account_sid: 'account_sid',
});

console.log(response.end);
```

## Create a TeXML secret

`POST /texml/secrets`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.secrets({ name: 'My Secret Name', value: 'My Secret Value' });

console.log(response.data);
```

## Request siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.siprecJson('call_sid', {
  account_sid: 'account_sid',
});

console.log(response.account_sid);
```

## Updates siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec/{siprec_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.siprec.siprecSidJson('siprec_sid', {
  account_sid: 'account_sid',
  call_sid: 'call_sid',
});

console.log(response.account_sid);
```

## Start streaming media from a call.

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.streamsJson('call_sid', {
  account_sid: 'account_sid',
});

console.log(response.account_sid);
```

## Update streaming on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams/{streaming_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.calls.streams.streamingSidJson(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { account_sid: 'account_sid', call_sid: 'call_sid' },
);

console.log(response.account_sid);
```

## List recording transcriptions

`GET /texml/Accounts/{account_sid}/Transcriptions.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.texml.accounts.retrieveTranscriptionsJson('account_sid');

console.log(response.end);
```

## Fetch a recording transcription resource

`GET /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response =
  await client.texml.accounts.transcriptions.json.retrieveRecordingTranscriptionSidJson(
    '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
    { account_sid: 'account_sid' },
  );

console.log(response.account_sid);
```

## Delete a recording transcription

`DELETE /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.texml.accounts.transcriptions.json.deleteRecordingTranscriptionSidJson(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
  { account_sid: 'account_sid' },
);
```
