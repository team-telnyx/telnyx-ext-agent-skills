---
name: telnyx-webrtc-ruby
description: >-
  Manage WebRTC credentials and mobile push notification settings. Use when
  building browser-based or mobile softphone applications. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: webrtc
  language: ruby
---

# Telnyx Webrtc - Ruby

## Installation

```bash
gem install telnyx
```

## List mobile push credentials

`GET /mobile_push_credentials`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.mobile_push_credentials.list

puts(page)
```

## Creates a new mobile push credential

`POST /mobile_push_credentials`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

push_credential_response = telnyx.mobile_push_credentials.create(
  create_mobile_push_credential_request: {
    alias: "LucyIosCredential",
    certificate: "-----BEGIN CERTIFICATE----- MIIGVDCCBTKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END CERTIFICATE-----",
    private_key: "-----BEGIN RSA PRIVATE KEY----- MIIEpQIBAAKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END RSA PRIVATE KEY-----",
    type: :ios
  }
)

puts(push_credential_response)
```

## Retrieves a mobile push credential

`GET /mobile_push_credentials/{push_credential_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

push_credential_response = telnyx.mobile_push_credentials.retrieve("0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")

puts(push_credential_response)
```

## Deletes a mobile push credential

`DELETE /mobile_push_credentials/{push_credential_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.mobile_push_credentials.delete("0ccc7b76-4df3-4bca-a05a-3da1ecc389f0")

puts(result)
```

## List all credentials

`GET /telephony_credentials`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.telephony_credentials.list

puts(page)
```

## Create a credential

`POST /telephony_credentials`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telephony_credential = telnyx.telephony_credentials.create(connection_id: "1234567890")

puts(telephony_credential)
```

## Get a credential

`GET /telephony_credentials/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telephony_credential = telnyx.telephony_credentials.retrieve("id")

puts(telephony_credential)
```

## Update a credential

`PATCH /telephony_credentials/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telephony_credential = telnyx.telephony_credentials.update("id")

puts(telephony_credential)
```

## Delete a credential

`DELETE /telephony_credentials/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

telephony_credential = telnyx.telephony_credentials.delete("id")

puts(telephony_credential)
```

## Create an Access Token.

`POST /telephony_credentials/{id}/token`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.telephony_credentials.create_token("id")

puts(response)
```
