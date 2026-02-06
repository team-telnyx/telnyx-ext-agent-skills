---
name: telnyx-voice-streaming-ruby
description: >-
  Stream call audio in real-time, fork media to external destinations, and
  transcribe speech live. Use for real-time analytics and AI integrations. This
  skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: voice-streaming
  language: ruby
---

# Telnyx Voice Streaming - Ruby

## Installation

```bash
gem install telnyx
```

## Forking start

`POST /calls/{call_control_id}/actions/fork_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_forking("call_control_id")

puts(response)
```

## Forking stop

`POST /calls/{call_control_id}/actions/fork_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_forking("call_control_id")

puts(response)
```

## Streaming start

`POST /calls/{call_control_id}/actions/streaming_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_streaming("call_control_id")

puts(response)
```

## Streaming stop

`POST /calls/{call_control_id}/actions/streaming_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_streaming("call_control_id")

puts(response)
```

## Transcription start

`POST /calls/{call_control_id}/actions/transcription_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_transcription("call_control_id")

puts(response)
```

## Transcription stop

`POST /calls/{call_control_id}/actions/transcription_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_transcription("call_control_id")

puts(response)
```
