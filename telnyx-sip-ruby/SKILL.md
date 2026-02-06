---
name: telnyx-sip-ruby
description: >-
  Configure SIP trunking connections and outbound voice profiles. Use when
  connecting PBX systems or managing SIP infrastructure. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: sip
  language: ruby
---

# Telnyx Sip - Ruby

## Installation

```bash
gem install telnyx
```

## Get all outbound voice profiles

`GET /outbound_voice_profiles`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.outbound_voice_profiles.list

puts(page)
```

## Create an outbound voice profile

`POST /outbound_voice_profiles`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

outbound_voice_profile = telnyx.outbound_voice_profiles.create(name: "office")

puts(outbound_voice_profile)
```

## Retrieve an outbound voice profile

`GET /outbound_voice_profiles/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

outbound_voice_profile = telnyx.outbound_voice_profiles.retrieve("1293384261075731499")

puts(outbound_voice_profile)
```

## Updates an existing outbound voice profile.

`PATCH /outbound_voice_profiles/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

outbound_voice_profile = telnyx.outbound_voice_profiles.update("1293384261075731499", name: "office")

puts(outbound_voice_profile)
```

## Delete an outbound voice profile

`DELETE /outbound_voice_profiles/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

outbound_voice_profile = telnyx.outbound_voice_profiles.delete("1293384261075731499")

puts(outbound_voice_profile)
```

## List connections

`GET /connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.connections.list

puts(page)
```

## Retrieve a connection

`GET /connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

connection = telnyx.connections.retrieve("id")

puts(connection)
```

## List credential connections

`GET /credential_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.credential_connections.list

puts(page)
```

## Create a credential connection

`POST /credential_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

credential_connection = telnyx.credential_connections.create(
  connection_name: "my name",
  password: "my123secure456password789",
  user_name: "myusername123"
)

puts(credential_connection)
```

## Retrieve a credential connection

`GET /credential_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

credential_connection = telnyx.credential_connections.retrieve("id")

puts(credential_connection)
```

## Update a credential connection

`PATCH /credential_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

credential_connection = telnyx.credential_connections.update("id")

puts(credential_connection)
```

## Delete a credential connection

`DELETE /credential_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

credential_connection = telnyx.credential_connections.delete("id")

puts(credential_connection)
```

## Check a Credential Connection Registration Status

`POST /credential_connections/{id}/actions/check_registration_status`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.credential_connections.actions.check_registration_status("id")

puts(response)
```

## List Ips

`GET /ips`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ips.list

puts(page)
```

## Create an Ip

`POST /ips`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip = telnyx.ips.create(ip_address: "192.168.0.0")

puts(ip)
```

## Retrieve an Ip

`GET /ips/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip = telnyx.ips.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(ip)
```

## Update an Ip

`PATCH /ips/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip = telnyx.ips.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", ip_address: "192.168.0.0")

puts(ip)
```

## Delete an Ip

`DELETE /ips/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip = telnyx.ips.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(ip)
```

## List Ip connections

`GET /ip_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ip_connections.list

puts(page)
```

## Create an Ip connection

`POST /ip_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip_connection = telnyx.ip_connections.create

puts(ip_connection)
```

## Retrieve an Ip connection

`GET /ip_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip_connection = telnyx.ip_connections.retrieve("id")

puts(ip_connection)
```

## Update an Ip connection

`PATCH /ip_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip_connection = telnyx.ip_connections.update("id")

puts(ip_connection)
```

## Delete an Ip connection

`DELETE /ip_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ip_connection = telnyx.ip_connections.delete("id")

puts(ip_connection)
```

## List FQDNs

`GET /fqdns`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.fqdns.list

puts(page)
```

## Create an FQDN

`POST /fqdns`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn = telnyx.fqdns.create(connection_id: "1516447646313612565", dns_record_type: "a", fqdn: "example.com")

puts(fqdn)
```

## Retrieve an FQDN

`GET /fqdns/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn = telnyx.fqdns.retrieve("id")

puts(fqdn)
```

## Update an FQDN

`PATCH /fqdns/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn = telnyx.fqdns.update("id")

puts(fqdn)
```

## Delete an FQDN

`DELETE /fqdns/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn = telnyx.fqdns.delete("id")

puts(fqdn)
```

## List FQDN connections

`GET /fqdn_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.fqdn_connections.list

puts(page)
```

## Create an FQDN connection

`POST /fqdn_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn_connection = telnyx.fqdn_connections.create(connection_name: "string")

puts(fqdn_connection)
```

## Retrieve an FQDN connection

`GET /fqdn_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn_connection = telnyx.fqdn_connections.retrieve("id")

puts(fqdn_connection)
```

## Update an FQDN connection

`PATCH /fqdn_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn_connection = telnyx.fqdn_connections.update("id")

puts(fqdn_connection)
```

## Delete an FQDN connection

`DELETE /fqdn_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fqdn_connection = telnyx.fqdn_connections.delete("id")

puts(fqdn_connection)
```

## List Mobile Voice Connections

`GET /v2/mobile_voice_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.mobile_voice_connections.list

puts(page)
```

## Create a Mobile Voice Connection

`POST /v2/mobile_voice_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mobile_voice_connection = telnyx.mobile_voice_connections.create

puts(mobile_voice_connection)
```

## Retrieve a Mobile Voice Connection

`GET /v2/mobile_voice_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mobile_voice_connection = telnyx.mobile_voice_connections.retrieve("id")

puts(mobile_voice_connection)
```

## Update a Mobile Voice Connection

`PATCH /v2/mobile_voice_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mobile_voice_connection = telnyx.mobile_voice_connections.update("id")

puts(mobile_voice_connection)
```

## Delete a Mobile Voice Connection

`DELETE /v2/mobile_voice_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

mobile_voice_connection = telnyx.mobile_voice_connections.delete("id")

puts(mobile_voice_connection)
```
