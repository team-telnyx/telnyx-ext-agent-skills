---
name: telnyx-oauth-python
description: >-
  Implement OAuth 2.0 authentication flows for Telnyx API access. This skill
  provides Python SDK examples.
metadata:
  author: telnyx
  product: oauth
  language: python
---

# Telnyx Oauth - Python

## Installation

```bash
pip install telnyx
```

## Authorization server metadata

`GET /.well-known/oauth-authorization-server`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.well_known.retrieve_authorization_server_metadata()
print(response.authorization_endpoint)
```

## Protected resource metadata

`GET /.well-known/oauth-protected-resource`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.well_known.retrieve_protected_resource_metadata()
print(response.authorization_servers)
```

## OAuth authorization endpoint

`GET /oauth/authorize`

```python
from telnyx import Telnyx

client = Telnyx()
client.oauth.retrieve_authorize(
    client_id="client_id",
    redirect_uri="https://example.com",
    response_type="code",
)
```

## List OAuth clients

`GET /oauth/clients`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.oauth_clients.list()
page = page.data[0]
print(page.client_id)
```

## Create OAuth client

`POST /oauth/clients`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth_client = client.oauth_clients.create(
    allowed_grant_types=["client_credentials"],
    allowed_scopes=["admin"],
    client_type="public",
    name="My OAuth client",
)
print(oauth_client.data)
```

## Get OAuth client

`GET /oauth/clients/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth_client = client.oauth_clients.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(oauth_client.data)
```

## Update OAuth client

`PUT /oauth/clients/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth_client = client.oauth_clients.update(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(oauth_client.data)
```

## Delete OAuth client

`DELETE /oauth/clients/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.oauth_clients.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Get OAuth consent token

`GET /oauth/consent/{consent_token}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth = client.oauth.retrieve(
    "consent_token",
)
print(oauth.data)
```

## List OAuth grants

`GET /oauth/grants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.oauth_grants.list()
page = page.data[0]
print(page.id)
```

## Get OAuth grant

`GET /oauth/grants/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth_grant = client.oauth_grants.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(oauth_grant.data)
```

## Revoke OAuth grant

`DELETE /oauth/grants/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
oauth_grant = client.oauth_grants.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(oauth_grant.data)
```

## Token introspection

`POST /oauth/introspect`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.oauth.introspect(
    token="token",
)
print(response.client_id)
```

## JSON Web Key Set

`GET /oauth/jwks`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.oauth.retrieve_jwks()
print(response.keys)
```

## Dynamic client registration

`POST /oauth/register`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.oauth.register()
print(response.client_id)
```

## OAuth token endpoint

`POST /oauth/token`

```python
from telnyx import Telnyx

client = Telnyx()
response = client.oauth.token(
    grant_type="client_credentials",
)
print(response.access_token)
```
