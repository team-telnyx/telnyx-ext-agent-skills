---
name: telnyx-numbers-services-ruby
description: >-
  Configure voicemail, voice channels, and emergency (E911) services for your
  phone numbers. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: numbers-services
  language: ruby
---

# Telnyx Numbers Services - Ruby

## Installation

```bash
gem install telnyx
```

## List dynamic emergency addresses

`GET /dynamic_emergency_addresses`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.dynamic_emergency_addresses.list

puts(page)
```

## Create a dynamic emergency address.

`POST /dynamic_emergency_addresses`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_address = telnyx.dynamic_emergency_addresses.create(
  administrative_area: "TX",
  country_code: :US,
  house_number: "600",
  locality: "Austin",
  postal_code: "78701",
  street_name: "Congress"
)

puts(dynamic_emergency_address)
```

## Get a dynamic emergency address

`GET /dynamic_emergency_addresses/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_address = telnyx.dynamic_emergency_addresses.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(dynamic_emergency_address)
```

## Delete a dynamic emergency address

`DELETE /dynamic_emergency_addresses/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_address = telnyx.dynamic_emergency_addresses.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(dynamic_emergency_address)
```

## List dynamic emergency endpoints

`GET /dynamic_emergency_endpoints`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.dynamic_emergency_endpoints.list

puts(page)
```

## Create a dynamic emergency endpoint.

`POST /dynamic_emergency_endpoints`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_endpoint = telnyx.dynamic_emergency_endpoints.create(
  callback_number: "+13125550000",
  caller_name: "Jane Doe Desk Phone",
  dynamic_emergency_address_id: "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0"
)

puts(dynamic_emergency_endpoint)
```

## Get a dynamic emergency endpoint

`GET /dynamic_emergency_endpoints/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_endpoint = telnyx.dynamic_emergency_endpoints.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(dynamic_emergency_endpoint)
```

## Delete a dynamic emergency endpoint

`DELETE /dynamic_emergency_endpoints/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dynamic_emergency_endpoint = telnyx.dynamic_emergency_endpoints.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(dynamic_emergency_endpoint)
```

## List your voice channels for non-US zones

`GET /channel_zones`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.channel_zones.list

puts(page)
```

## Update voice channels for non-US Zones

`PUT /channel_zones/{channel_zone_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

channel_zone = telnyx.channel_zones.update("channel_zone_id", channels: 0)

puts(channel_zone)
```

## List your voice channels for US Zone

`GET /inbound_channels`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inbound_channels = telnyx.inbound_channels.list

puts(inbound_channels)
```

## Update voice channels for US Zone

`PATCH /inbound_channels`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inbound_channel = telnyx.inbound_channels.update(channels: 7)

puts(inbound_channel)
```

## List All Numbers using Channel Billing

`GET /list`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.list.retrieve_all

puts(response)
```

## List Numbers using Channel Billing for a specific Zone

`GET /list/{channel_zone_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.list.retrieve_by_zone("channel_zone_id")

puts(response)
```

## Get voicemail

`GET /phone_numbers/{phone_number_id}/voicemail`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

voicemail = telnyx.phone_numbers.voicemail.retrieve("123455678900")

puts(voicemail)
```

## Create voicemail

`POST /phone_numbers/{phone_number_id}/voicemail`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

voicemail = telnyx.phone_numbers.voicemail.create("123455678900")

puts(voicemail)
```

## Update voicemail

`PATCH /phone_numbers/{phone_number_id}/voicemail`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

voicemail = telnyx.phone_numbers.voicemail.update("123455678900")

puts(voicemail)
```
