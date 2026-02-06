---
name: telnyx-voice-conferencing-ruby
description: >-
  Create and manage conference calls, queues, and multi-party sessions. Use when
  building call centers or conferencing applications. This skill provides Ruby
  SDK examples.
metadata:
  author: telnyx
  product: voice-conferencing
  language: ruby
---

# Telnyx Voice Conferencing - Ruby

## Installation

```bash
gem install telnyx
```

## Enqueue call

`POST /calls/{call_control_id}/actions/enqueue`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.enqueue("call_control_id", queue_name: "support")

puts(response)
```

## Remove call from a queue

`POST /calls/{call_control_id}/actions/leave_queue`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.leave_queue("call_control_id")

puts(response)
```

## List conferences

`GET /conferences`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.conferences.list

puts(page)
```

## Create conference

`POST /conferences`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conference = telnyx.conferences.create(
  call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
  name: "Business"
)

puts(conference)
```

## Retrieve a conference

`GET /conferences/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conference = telnyx.conferences.retrieve("id")

puts(conference)
```

## Hold conference participants

`POST /conferences/{id}/actions/hold`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.hold("id")

puts(response)
```

## Join a conference

`POST /conferences/{id}/actions/join`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.join(
  "id",
  call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"
)

puts(response)
```

## Leave a conference

`POST /conferences/{id}/actions/leave`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.leave("id", call_control_id: "c46e06d7-b78f-4b13-96b6-c576af9640ff")

puts(response)
```

## Mute conference participants

`POST /conferences/{id}/actions/mute`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.mute("id")

puts(response)
```

## Play audio to conference participants

`POST /conferences/{id}/actions/play`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.play("id")

puts(response)
```

## Conference recording pause

`POST /conferences/{id}/actions/record_pause`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.record_pause("id")

puts(response)
```

## Conference recording resume

`POST /conferences/{id}/actions/record_resume`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.record_resume("id")

puts(response)
```

## Conference recording start

`POST /conferences/{id}/actions/record_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.record_start("id", format_: :wav)

puts(response)
```

## Conference recording stop

`POST /conferences/{id}/actions/record_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.record_stop("id")

puts(response)
```

## Speak text to conference participants

`POST /conferences/{id}/actions/speak`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.speak("id", payload: "Say this to participants", voice: "female")

puts(response)
```

## Stop audio being played on the conference

`POST /conferences/{id}/actions/stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.stop("id")

puts(response)
```

## Unhold conference participants

`POST /conferences/{id}/actions/unhold`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.unhold(
  "id",
  call_control_ids: ["v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"]
)

puts(response)
```

## Unmute conference participants

`POST /conferences/{id}/actions/unmute`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.conferences.actions.unmute("id")

puts(response)
```

## Update conference participant

`POST /conferences/{id}/actions/update`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

action = telnyx.conferences.actions.update(
  "id",
  call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
  supervisor_role: :whisper
)

puts(action)
```

## List conference participants

`GET /conferences/{conference_id}/participants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.conferences.list_participants("conference_id")

puts(page)
```
