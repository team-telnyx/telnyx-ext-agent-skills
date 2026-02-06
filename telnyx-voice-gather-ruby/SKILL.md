---
name: telnyx-voice-gather-ruby
description: >-
  Collect DTMF input and speech from callers using standard gather or AI-powered
  gather. Build interactive voice menus and AI voice assistants. This skill
  provides Ruby SDK examples.
metadata:
  author: telnyx
  product: voice-gather
  language: ruby
---

# Telnyx Voice Gather - Ruby

## Installation

```bash
gem install telnyx
```

## Add messages to AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_add_messages`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.add_ai_assistant_messages("call_control_id")

puts(response)
```

## Start AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_ai_assistant("call_control_id")

puts(response)
```

## Stop AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_ai_assistant("call_control_id")

puts(response)
```

## Gather stop

`POST /calls/{call_control_id}/actions/gather_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_gather("call_control_id")

puts(response)
```

## Gather using AI

`POST /calls/{call_control_id}/actions/gather_using_ai`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.gather_using_ai(
  "call_control_id",
  parameters: {properties: "bar", required: "bar", type: "bar"}
)

puts(response)
```

## Gather using audio

`POST /calls/{call_control_id}/actions/gather_using_audio`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.gather_using_audio("call_control_id")

puts(response)
```

## Gather using speak

`POST /calls/{call_control_id}/actions/gather_using_speak`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.gather_using_speak("call_control_id", payload: "say this on call", voice: "male")

puts(response)
```

## Gather

`POST /calls/{call_control_id}/actions/gather`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.gather("call_control_id")

puts(response)
```
