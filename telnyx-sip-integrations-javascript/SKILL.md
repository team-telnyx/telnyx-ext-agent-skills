---
name: telnyx-sip-integrations-javascript
description: >-
  Manage call recordings, media storage, Dialogflow integration, and external
  connections for SIP trunking. This skill provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: sip-integrations
  language: javascript
---

# Telnyx Sip Integrations - JavaScript

## Installation

```bash
npm install telnyx
```

## List all call recordings

`GET /recordings`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const recordingResponseData of client.recordings.list()) {
  console.log(recordingResponseData.id);
}
```

## Retrieve a call recording

`GET /recordings/{recording_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const recording = await client.recordings.retrieve('recording_id');

console.log(recording.data);
```

## Delete a call recording

`DELETE /recordings/{recording_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const recording = await client.recordings.delete('recording_id');

console.log(recording.data);
```

## Delete a list of call recordings

`POST /recordings/actions/delete`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.recordings.actions.delete({
  ids: ['428c31b6-7af4-4bcb-b7f5-5013ef9657c1', '428c31b6-7af4-4bcb-b7f5-5013ef9657c2'],
});
```

## List all recording transcriptions

`GET /recording_transcriptions`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const recordingTranscriptions = await client.recordingTranscriptions.list();

console.log(recordingTranscriptions.data);
```

## Retrieve a recording transcription

`GET /recording_transcriptions/{recording_transcription_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const recordingTranscription = await client.recordingTranscriptions.retrieve(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(recordingTranscription.data);
```

## Delete a recording transcription

`DELETE /recording_transcriptions/{recording_transcription_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const recordingTranscription = await client.recordingTranscriptions.delete(
  '6a09cdc3-8948-47f0-aa62-74ac943d6c58',
);

console.log(recordingTranscription.data);
```

## Retrieve a stored credential

`GET /custom_storage_credentials/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const customStorageCredential = await client.customStorageCredentials.retrieve('connection_id');

console.log(customStorageCredential.connection_id);
```

## Create a custom storage credential

`POST /custom_storage_credentials/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const customStorageCredential = await client.customStorageCredentials.create('connection_id', {
  backend: 'gcs',
  configuration: { backend: 'gcs' },
});

console.log(customStorageCredential.connection_id);
```

## Update a stored credential

`PUT /custom_storage_credentials/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const customStorageCredential = await client.customStorageCredentials.update('connection_id', {
  backend: 'gcs',
  configuration: { backend: 'gcs' },
});

console.log(customStorageCredential.connection_id);
```

## Delete a stored credential

`DELETE /custom_storage_credentials/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.customStorageCredentials.delete('connection_id');
```

## Retrieve stored Dialogflow Connection

`GET /dialogflow_connections/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dialogflowConnection = await client.dialogflowConnections.retrieve('connection_id');

console.log(dialogflowConnection.data);
```

## Create a Dialogflow Connection

`POST /dialogflow_connections/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dialogflowConnection = await client.dialogflowConnections.create('connection_id', {
  service_account: {
    type: 'bar',
    project_id: 'bar',
    private_key_id: 'bar',
    private_key: 'bar',
    client_email: 'bar',
    client_id: 'bar',
    auth_uri: 'bar',
    token_uri: 'bar',
    auth_provider_x509_cert_url: 'bar',
    client_x509_cert_url: 'bar',
  },
});

console.log(dialogflowConnection.data);
```

## Update stored Dialogflow Connection

`PUT /dialogflow_connections/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const dialogflowConnection = await client.dialogflowConnections.update('connection_id', {
  service_account: {
    type: 'bar',
    project_id: 'bar',
    private_key_id: 'bar',
    private_key: 'bar',
    client_email: 'bar',
    client_id: 'bar',
    auth_uri: 'bar',
    token_uri: 'bar',
    auth_provider_x509_cert_url: 'bar',
    client_x509_cert_url: 'bar',
  },
});

console.log(dialogflowConnection.data);
```

## Delete stored Dialogflow Connection

`DELETE /dialogflow_connections/{connection_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.dialogflowConnections.delete('connection_id');
```

## List all External Connections

`GET /external_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const externalConnection of client.externalConnections.list()) {
  console.log(externalConnection.id);
}
```

## Creates an External Connection

`POST /external_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const externalConnection = await client.externalConnections.create({
  external_sip_connection: 'zoom',
  outbound: {},
});

console.log(externalConnection.data);
```

## Retrieve an External Connection

`GET /external_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const externalConnection = await client.externalConnections.retrieve('id');

console.log(externalConnection.data);
```

## Update an External Connection

`PATCH /external_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const externalConnection = await client.externalConnections.update('id', {
  outbound: { outbound_voice_profile_id: 'outbound_voice_profile_id' },
});

console.log(externalConnection.data);
```

## Deletes an External Connection

`DELETE /external_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const externalConnection = await client.externalConnections.delete('id');

console.log(externalConnection.data);
```

## List all civic addresses and locations

`GET /external_connections/{id}/civic_addresses`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const civicAddresses = await client.externalConnections.civicAddresses.list('id');

console.log(civicAddresses.data);
```

## Retrieve a Civic Address

`GET /external_connections/{id}/civic_addresses/{address_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const civicAddress = await client.externalConnections.civicAddresses.retrieve(
  '318fb664-d341-44d2-8405-e6bfb9ced6d9',
  { id: 'id' },
);

console.log(civicAddress.data);
```

## Update a location's static emergency address

`PATCH /external_connections/{id}/locations/{location_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.externalConnections.updateLocation(
  '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  {
    id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
    static_emergency_address_id: '182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e',
  },
);

console.log(response.data);
```

## List all phone numbers

`GET /external_connections/{id}/phone_numbers`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const externalConnectionPhoneNumber of client.externalConnections.phoneNumbers.list(
  'id',
)) {
  console.log(externalConnectionPhoneNumber.civic_address_id);
}
```

## Retrieve a phone number

`GET /external_connections/{id}/phone_numbers/{phone_number_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumber = await client.externalConnections.phoneNumbers.retrieve('1234567889', {
  id: 'id',
});

console.log(phoneNumber.data);
```

## Update a phone number

`PATCH /external_connections/{id}/phone_numbers/{phone_number_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const phoneNumber = await client.externalConnections.phoneNumbers.update('1234567889', {
  id: 'id',
});

console.log(phoneNumber.data);
```

## List all Releases

`GET /external_connections/{id}/releases`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const releaseListResponse of client.externalConnections.releases.list('id')) {
  console.log(releaseListResponse.tenant_id);
}
```

## Retrieve a Release request

`GET /external_connections/{id}/releases/{release_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const release = await client.externalConnections.releases.retrieve(
  '7b6a6449-b055-45a6-81f6-f6f0dffa4cc6',
  { id: 'id' },
);

console.log(release.data);
```

## List all Upload requests

`GET /external_connections/{id}/uploads`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const upload of client.externalConnections.uploads.list('id')) {
  console.log(upload.location_id);
}
```

## Creates an Upload request

`POST /external_connections/{id}/uploads`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const upload = await client.externalConnections.uploads.create('id', {
  number_ids: [
    '3920457616934164700',
    '3920457616934164701',
    '3920457616934164702',
    '3920457616934164703',
  ],
});

console.log(upload.ticket_id);
```

## Refresh the status of all Upload requests

`POST /external_connections/{id}/uploads/refresh`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.externalConnections.uploads.refreshStatus('id');

console.log(response.success);
```

## Get the count of pending upload requests

`GET /external_connections/{id}/uploads/status`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.externalConnections.uploads.pendingCount('id');

console.log(response.data);
```

## Retrieve an Upload request

`GET /external_connections/{id}/uploads/{ticket_id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const upload = await client.externalConnections.uploads.retrieve(
  '7b6a6449-b055-45a6-81f6-f6f0dffa4cc6',
  { id: 'id' },
);

console.log(upload.data);
```

## Retry an Upload request

`POST /external_connections/{id}/uploads/{ticket_id}/retry`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.externalConnections.uploads.retry(
  '7b6a6449-b055-45a6-81f6-f6f0dffa4cc6',
  { id: 'id' },
);

console.log(response.data);
```

## List all log messages

`GET /external_connections/log_messages`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const logMessageListResponse of client.externalConnections.logMessages.list()) {
  console.log(logMessageListResponse.code);
}
```

## Retrieve a log message

`GET /external_connections/log_messages/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const logMessage = await client.externalConnections.logMessages.retrieve('id');

console.log(logMessage.log_messages);
```

## Dismiss a log message

`DELETE /external_connections/log_messages/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.externalConnections.logMessages.dismiss('id');

console.log(response.success);
```

## Refresh Operator Connect integration

`POST /operator_connect/actions/refresh`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.operatorConnect.actions.refresh();

console.log(response.message);
```

## List uploaded media

`GET /media`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const media = await client.media.list();

console.log(media.data);
```

## Upload media

`POST /media`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.media.upload({ media_url: 'http://www.example.com/audio.mp3' });

console.log(response.data);
```

## Retrieve stored media

`GET /media/{media_name}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const media = await client.media.retrieve('media_name');

console.log(media.data);
```

## Update stored media

`PUT /media/{media_name}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const media = await client.media.update('media_name');

console.log(media.data);
```

## Deletes stored media

`DELETE /media/{media_name}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.media.delete('media_name');
```

## Download stored media

`GET /media/{media_name}/download`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.media.download('media_name');

console.log(response);

const content = await response.blob();
console.log(content);
```
