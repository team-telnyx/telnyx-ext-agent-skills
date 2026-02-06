---
name: telnyx-sip-javascript
description: >-
  Configure SIP trunking connections and outbound voice profiles. Use when
  connecting PBX systems or managing SIP infrastructure. This skill provides
  JavaScript SDK examples.
metadata:
  author: telnyx
  product: sip
  language: javascript
---

# Telnyx Sip - JavaScript

## Installation

```bash
npm install telnyx
```

## Get all outbound voice profiles

`GET /outbound_voice_profiles`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const outboundVoiceProfile of client.outboundVoiceProfiles.list()) {
  console.log(outboundVoiceProfile.id);
}
```

## Create an outbound voice profile

`POST /outbound_voice_profiles`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const outboundVoiceProfile = await client.outboundVoiceProfiles.create({ name: 'office' });

console.log(outboundVoiceProfile.data);
```

## Retrieve an outbound voice profile

`GET /outbound_voice_profiles/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const outboundVoiceProfile = await client.outboundVoiceProfiles.retrieve('1293384261075731499');

console.log(outboundVoiceProfile.data);
```

## Updates an existing outbound voice profile.

`PATCH /outbound_voice_profiles/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const outboundVoiceProfile = await client.outboundVoiceProfiles.update('1293384261075731499', {
  name: 'office',
});

console.log(outboundVoiceProfile.data);
```

## Delete an outbound voice profile

`DELETE /outbound_voice_profiles/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const outboundVoiceProfile = await client.outboundVoiceProfiles.delete('1293384261075731499');

console.log(outboundVoiceProfile.data);
```

## List connections

`GET /connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const connectionListResponse of client.connections.list()) {
  console.log(connectionListResponse.id);
}
```

## Retrieve a connection

`GET /connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const connection = await client.connections.retrieve('id');

console.log(connection.data);
```

## List credential connections

`GET /credential_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const credentialConnection of client.credentialConnections.list()) {
  console.log(credentialConnection.id);
}
```

## Create a credential connection

`POST /credential_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const credentialConnection = await client.credentialConnections.create({
  connection_name: 'my name',
  password: 'my123secure456password789',
  user_name: 'myusername123',
});

console.log(credentialConnection.data);
```

## Retrieve a credential connection

`GET /credential_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const credentialConnection = await client.credentialConnections.retrieve('id');

console.log(credentialConnection.data);
```

## Update a credential connection

`PATCH /credential_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const credentialConnection = await client.credentialConnections.update('id');

console.log(credentialConnection.data);
```

## Delete a credential connection

`DELETE /credential_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const credentialConnection = await client.credentialConnections.delete('id');

console.log(credentialConnection.data);
```

## Check a Credential Connection Registration Status

`POST /credential_connections/{id}/actions/check_registration_status`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const response = await client.credentialConnections.actions.checkRegistrationStatus('id');

console.log(response.data);
```

## List Ips

`GET /ips`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const ip of client.ips.list()) {
  console.log(ip.id);
}
```

## Create an Ip

`POST /ips`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ip = await client.ips.create({ ip_address: '192.168.0.0' });

console.log(ip.data);
```

## Retrieve an Ip

`GET /ips/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ip = await client.ips.retrieve('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(ip.data);
```

## Update an Ip

`PATCH /ips/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ip = await client.ips.update('6a09cdc3-8948-47f0-aa62-74ac943d6c58', {
  ip_address: '192.168.0.0',
});

console.log(ip.data);
```

## Delete an Ip

`DELETE /ips/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ip = await client.ips.delete('6a09cdc3-8948-47f0-aa62-74ac943d6c58');

console.log(ip.data);
```

## List Ip connections

`GET /ip_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const ipConnection of client.ipConnections.list()) {
  console.log(ipConnection.id);
}
```

## Create an Ip connection

`POST /ip_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ipConnection = await client.ipConnections.create();

console.log(ipConnection.data);
```

## Retrieve an Ip connection

`GET /ip_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ipConnection = await client.ipConnections.retrieve('id');

console.log(ipConnection.data);
```

## Update an Ip connection

`PATCH /ip_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ipConnection = await client.ipConnections.update('id');

console.log(ipConnection.data);
```

## Delete an Ip connection

`DELETE /ip_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const ipConnection = await client.ipConnections.delete('id');

console.log(ipConnection.data);
```

## List FQDNs

`GET /fqdns`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const fqdn of client.fqdns.list()) {
  console.log(fqdn.id);
}
```

## Create an FQDN

`POST /fqdns`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdn = await client.fqdns.create({
  connection_id: '1516447646313612565',
  dns_record_type: 'a',
  fqdn: 'example.com',
});

console.log(fqdn.data);
```

## Retrieve an FQDN

`GET /fqdns/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdn = await client.fqdns.retrieve('id');

console.log(fqdn.data);
```

## Update an FQDN

`PATCH /fqdns/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdn = await client.fqdns.update('id');

console.log(fqdn.data);
```

## Delete an FQDN

`DELETE /fqdns/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdn = await client.fqdns.delete('id');

console.log(fqdn.data);
```

## List FQDN connections

`GET /fqdn_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const fqdnConnection of client.fqdnConnections.list()) {
  console.log(fqdnConnection.id);
}
```

## Create an FQDN connection

`POST /fqdn_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdnConnection = await client.fqdnConnections.create({ connection_name: 'string' });

console.log(fqdnConnection.data);
```

## Retrieve an FQDN connection

`GET /fqdn_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdnConnection = await client.fqdnConnections.retrieve('id');

console.log(fqdnConnection.data);
```

## Update an FQDN connection

`PATCH /fqdn_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdnConnection = await client.fqdnConnections.update('id');

console.log(fqdnConnection.data);
```

## Delete an FQDN connection

`DELETE /fqdn_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const fqdnConnection = await client.fqdnConnections.delete('id');

console.log(fqdnConnection.data);
```

## List Mobile Voice Connections

`GET /v2/mobile_voice_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const mobileVoiceConnection of client.mobileVoiceConnections.list()) {
  console.log(mobileVoiceConnection.id);
}
```

## Create a Mobile Voice Connection

`POST /v2/mobile_voice_connections`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobileVoiceConnection = await client.mobileVoiceConnections.create();

console.log(mobileVoiceConnection.data);
```

## Retrieve a Mobile Voice Connection

`GET /v2/mobile_voice_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobileVoiceConnection = await client.mobileVoiceConnections.retrieve('id');

console.log(mobileVoiceConnection.data);
```

## Update a Mobile Voice Connection

`PATCH /v2/mobile_voice_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobileVoiceConnection = await client.mobileVoiceConnections.update('id');

console.log(mobileVoiceConnection.data);
```

## Delete a Mobile Voice Connection

`DELETE /v2/mobile_voice_connections/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const mobileVoiceConnection = await client.mobileVoiceConnections.delete('id');

console.log(mobileVoiceConnection.data);
```
