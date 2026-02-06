---
name: telnyx-voice-ruby
description: >-
  Make and receive calls, transfer, bridge, and manage call lifecycle with Call
  Control. Includes application management and call events. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: voice
  language: ruby
---

# Telnyx Voice - Ruby

## Installation

```bash
gem install telnyx
```

## Answer call

`POST /calls/{call_control_id}/actions/answer`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.answer("call_control_id")

puts(response)
```

## Bridge calls

`POST /calls/{call_control_id}/actions/bridge`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.bridge(
  "call_control_id",
  call_control_id_to_bridge_with: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"
)

puts(response)
```

## Dial

`POST /calls`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.dial(
  connection_id: "7267xxxxxxxxxxxxxx",
  from: "+18005550101",
  to: "+18005550100 or sip:username@sip.telnyx.com"
)

puts(response)
```

## Hangup call

`POST /calls/{call_control_id}/actions/hangup`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.hangup("call_control_id")

puts(response)
```

## Transfer call

`POST /calls/{call_control_id}/actions/transfer`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.transfer("call_control_id", to: "+18005550100 or sip:username@sip.telnyx.com")

puts(response)
```

## List all active calls for given connection

`GET /connections/{connection_id}/active_calls`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.connections.list_active_calls("1293384261075731461")

puts(page)
```

## List call control applications

`GET /call_control_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.call_control_applications.list

puts(page)
```

## Create a call control application

`POST /call_control_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call_control_application = telnyx.call_control_applications.create(
  application_name: "call-router",
  webhook_event_url: "https://example.com"
)

puts(call_control_application)
```

## Retrieve a call control application

`GET /call_control_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call_control_application = telnyx.call_control_applications.retrieve("id")

puts(call_control_application)
```

## Update a call control application

`PATCH /call_control_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call_control_application = telnyx.call_control_applications.update(
  "id",
  application_name: "call-router",
  webhook_event_url: "https://example.com"
)

puts(call_control_application)
```

## Delete a call control application

`DELETE /call_control_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call_control_application = telnyx.call_control_applications.delete("id")

puts(call_control_application)
```

## List call events

`GET /call_events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.call_events.list

puts(page)
```
