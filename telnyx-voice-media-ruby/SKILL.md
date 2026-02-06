---
name: telnyx-voice-media-ruby
description: >-
  Play audio files, use text-to-speech, and record calls. Use when building IVR
  systems, playing announcements, or recording conversations. This skill
  provides Ruby SDK examples.
metadata:
  author: telnyx
  product: voice-media
  language: ruby
---

# Telnyx Voice Media - Ruby

## Installation

```bash
gem install telnyx
```

## Play audio URL

`POST /calls/{call_control_id}/actions/playback_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_playback("call_control_id")

puts(response)
```

## Stop audio playback

`POST /calls/{call_control_id}/actions/playback_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_playback("call_control_id")

puts(response)
```

## Record pause

`POST /calls/{call_control_id}/actions/record_pause`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.pause_recording("call_control_id")

puts(response)
```

## Record resume

`POST /calls/{call_control_id}/actions/record_resume`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.resume_recording("call_control_id")

puts(response)
```

## Recording start

`POST /calls/{call_control_id}/actions/record_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_recording("call_control_id", channels: :single, format_: :wav)

puts(response)
```

## Recording stop

`POST /calls/{call_control_id}/actions/record_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_recording("call_control_id")

puts(response)
```

## Speak text

`POST /calls/{call_control_id}/actions/speak`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.speak("call_control_id", payload: "Say this on the call", voice: "female")

puts(response)
```
