---
name: telnyx-account-access-ruby
description: >-
  Configure account addresses, authentication providers, IP access controls,
  billing groups, and integration secrets. This skill provides Ruby SDK
  examples.
metadata:
  author: telnyx
  product: account-access
  language: ruby
---

# Telnyx Account Access - Ruby

## Installation

```bash
gem install telnyx
```

## List all addresses

`GET /addresses`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.addresses.list

puts(page)
```

## Creates an address

`POST /addresses`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

address = telnyx.addresses.create(
  business_name: "Toy-O'Kon",
  country_code: "US",
  first_name: "Alfred",
  last_name: "Foster",
  locality: "Austin",
  street_address: "600 Congress Avenue"
)

puts(address)
```

## Retrieve an address

`GET /addresses/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

address = telnyx.addresses.retrieve("id")

puts(address)
```

## Deletes an address

`DELETE /addresses/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

address = telnyx.addresses.delete("id")

puts(address)
```

## Accepts this address suggestion as a new emergency address for Operator Connect and finishes the uploads of the numbers associated with it to Microsoft.

`POST /addresses/{id}/actions/accept_suggestions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.addresses.actions.accept_suggestions("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Validate an address

`POST /addresses/actions/validate`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.addresses.actions.validate(
  country_code: "US",
  postal_code: "78701",
  street_address: "600 Congress Avenue"
)

puts(response)
```

## List all SSO authentication providers

`GET /authentication_providers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.authentication_providers.list

puts(page)
```

## Creates an authentication provider

`POST /authentication_providers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

authentication_provider = telnyx.authentication_providers.create(
  name: "Okta",
  settings: {
    idp_cert_fingerprint: "13:38:C7:BB:C9:FF:4A:70:38:3A:E3:D9:5C:CD:DB:2E:50:1E:80:A7",
    idp_entity_id: "https://myorg.myidp.com/saml/metadata",
    idp_sso_target_url: "https://myorg.myidp.com/trust/saml2/http-post/sso"
  },
  short_name: "myorg"
)

puts(authentication_provider)
```

## Retrieve an authentication provider

`GET /authentication_providers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

authentication_provider = telnyx.authentication_providers.retrieve("id")

puts(authentication_provider)
```

## Update an authentication provider

`PATCH /authentication_providers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

authentication_provider = telnyx.authentication_providers.update("id")

puts(authentication_provider)
```

## Deletes an authentication provider

`DELETE /authentication_providers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

authentication_provider = telnyx.authentication_providers.delete("id")

puts(authentication_provider)
```

## List all billing groups

`GET /billing_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.billing_groups.list

puts(page)
```

## Create a billing group

`POST /billing_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

billing_group = telnyx.billing_groups.create

puts(billing_group)
```

## Get a billing group

`GET /billing_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

billing_group = telnyx.billing_groups.retrieve("f5586561-8ff0-4291-a0ac-84fe544797bd")

puts(billing_group)
```

## Update a billing group

`PATCH /billing_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

billing_group = telnyx.billing_groups.update("f5586561-8ff0-4291-a0ac-84fe544797bd")

puts(billing_group)
```

## Delete a billing group

`DELETE /billing_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

billing_group = telnyx.billing_groups.delete("f5586561-8ff0-4291-a0ac-84fe544797bd")

puts(billing_group)
```

## List integration secrets

`GET /integration_secrets`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.integration_secrets.list

puts(page)
```

## Create a secret

`POST /integration_secrets`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

integration_secret = telnyx.integration_secrets.create(identifier: "my_secret", type: :bearer)

puts(integration_secret)
```

## Delete an integration secret

`DELETE /integration_secrets/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.integration_secrets.delete("id")

puts(result)
```

## List all Access IP Addresses

`GET /access_ip_address`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.access_ip_address.list

puts(page)
```

## Create new Access IP Address

`POST /access_ip_address`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

access_ip_address_response = telnyx.access_ip_address.create(ip_address: "ip_address")

puts(access_ip_address_response)
```

## Retrieve an access IP address

`GET /access_ip_address/{access_ip_address_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

access_ip_address_response = telnyx.access_ip_address.retrieve("access_ip_address_id")

puts(access_ip_address_response)
```

## Delete access IP address

`DELETE /access_ip_address/{access_ip_address_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

access_ip_address_response = telnyx.access_ip_address.delete("access_ip_address_id")

puts(access_ip_address_response)
```

## List all Access IP Ranges

`GET /access_ip_ranges`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.access_ip_ranges.list

puts(page)
```

## Create new Access IP Range

`POST /access_ip_ranges`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

access_ip_range = telnyx.access_ip_ranges.create(cidr_block: "cidr_block")

puts(access_ip_range)
```

## Delete access IP ranges

`DELETE /access_ip_ranges/{access_ip_range_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

access_ip_range = telnyx.access_ip_ranges.delete("access_ip_range_id")

puts(access_ip_range)
```
