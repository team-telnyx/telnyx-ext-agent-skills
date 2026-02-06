---
name: telnyx-oauth-javascript
description: >-
  Implement OAuth 2.0 authentication flows for Telnyx API access. This skill
  provides JavaScript SDK examples.
metadata:
  author: telnyx
  product: oauth
  language: javascript
---

# Telnyx Oauth - JavaScript

## Installation

```bash
npm install telnyx
```

## Authorization server metadata

`GET /.well-known/oauth-authorization-server`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.wellKnown.retrieveAuthorizationServerMetadata();

console.log(response.authorization_endpoint);
```

## Protected resource metadata

`GET /.well-known/oauth-protected-resource`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.wellKnown.retrieveProtectedResourceMetadata();

console.log(response.authorization_servers);
```

## OAuth authorization endpoint

`GET /oauth/authorize`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

await client.oauth.retrieveAuthorize({
  client_id: 'client_id',
  redirect_uri: 'https://example.com',
  response_type: 'code',
});
```

## List OAuth clients

`GET /oauth/clients`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const oauthClient of client.oauthClients.list()) {
  console.log(oauthClient.client_id);
}
```

## Create OAuth client

`POST /oauth/clients`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauthClient = await client.oauthClients.create({
  allowed_grant_types: ['client_credentials'],
  allowed_scopes: ['admin'],
  client_type: 'public',
  name: 'My OAuth client',
});

console.log(oauthClient.data);
```

## Get OAuth client

`GET /oauth/clients/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauthClient = await client.oauthClients.retrieve('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(oauthClient.data);
```

## Update OAuth client

`PUT /oauth/clients/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauthClient = await client.oauthClients.update('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(oauthClient.data);
```

## Delete OAuth client

`DELETE /oauth/clients/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

await client.oauthClients.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');
```

## Get OAuth consent token

`GET /oauth/consent/{consent_token}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauth = await client.oauth.retrieve('consent_token');

console.log(oauth.data);
```

## List OAuth grants

`GET /oauth/grants`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

// Automatically fetches more pages as needed.
for await (const oauthGrant of client.oauthGrants.list()) {
  console.log(oauthGrant.id);
}
```

## Get OAuth grant

`GET /oauth/grants/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauthGrant = await client.oauthGrants.retrieve('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(oauthGrant.data);
```

## Revoke OAuth grant

`DELETE /oauth/grants/{id}`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx({
  apiKey: process.env['TELNYX_API_KEY'], // This is the default and can be omitted
});

const oauthGrant = await client.oauthGrants.delete('182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e');

console.log(oauthGrant.data);
```

## Token introspection

`POST /oauth/introspect`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.oauth.introspect({ token: 'token' });

console.log(response.client_id);
```

## JSON Web Key Set

`GET /oauth/jwks`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.oauth.retrieveJwks();

console.log(response.keys);
```

## Dynamic client registration

`POST /oauth/register`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.oauth.register();

console.log(response.client_id);
```

## OAuth token endpoint

`POST /oauth/token`

```javascript
import Telnyx from 'telnyx';

const client = new Telnyx();

const response = await client.oauth.token({ grant_type: 'client_credentials' });

console.log(response.access_token);
```
