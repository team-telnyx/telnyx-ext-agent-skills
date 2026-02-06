---
name: telnyx-oauth-ruby
description: >-
  Implement OAuth 2.0 authentication flows for Telnyx API access. This skill
  provides Ruby SDK examples.
metadata:
  author: telnyx
  product: oauth
  language: ruby
---

# Telnyx Oauth - Ruby

## Installation

```bash
gem install telnyx
```

## Authorization server metadata

`GET /.well-known/oauth-authorization-server`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.well_known.retrieve_authorization_server_metadata

puts(response)
```

## Protected resource metadata

`GET /.well-known/oauth-protected-resource`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.well_known.retrieve_protected_resource_metadata

puts(response)
```

## OAuth authorization endpoint

`GET /oauth/authorize`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.oauth.retrieve_authorize(
  client_id: "client_id",
  redirect_uri: "https://example.com",
  response_type: :code
)

puts(result)
```

## List OAuth clients

`GET /oauth/clients`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.oauth_clients.list

puts(page)
```

## Create OAuth client

`POST /oauth/clients`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth_client = telnyx.oauth_clients.create(
  allowed_grant_types: [:client_credentials],
  allowed_scopes: ["admin"],
  client_type: :public,
  name: "My OAuth client"
)

puts(oauth_client)
```

## Get OAuth client

`GET /oauth/clients/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth_client = telnyx.oauth_clients.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(oauth_client)
```

## Update OAuth client

`PUT /oauth/clients/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth_client = telnyx.oauth_clients.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(oauth_client)
```

## Delete OAuth client

`DELETE /oauth/clients/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.oauth_clients.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Get OAuth consent token

`GET /oauth/consent/{consent_token}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth = telnyx.oauth.retrieve("consent_token")

puts(oauth)
```

## List OAuth grants

`GET /oauth/grants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.oauth_grants.list

puts(page)
```

## Get OAuth grant

`GET /oauth/grants/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth_grant = telnyx.oauth_grants.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(oauth_grant)
```

## Revoke OAuth grant

`DELETE /oauth/grants/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

oauth_grant = telnyx.oauth_grants.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(oauth_grant)
```

## Token introspection

`POST /oauth/introspect`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(client_id: "My Client ID", client_secret: "My Client Secret")

response = telnyx.oauth.introspect(token: "token")

puts(response)
```

## JSON Web Key Set

`GET /oauth/jwks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.oauth.retrieve_jwks

puts(response)
```

## Dynamic client registration

`POST /oauth/register`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.oauth.register

puts(response)
```

## OAuth token endpoint

`POST /oauth/token`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(client_id: "My Client ID", client_secret: "My Client Secret")

response = telnyx.oauth.token(grant_type: :client_credentials)

puts(response)
```
