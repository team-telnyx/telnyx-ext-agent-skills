---
name: telnyx-texml-ruby
description: >-
  Build voice applications using TeXML markup language (TwiML-compatible).
  Manage applications, calls, conferences, recordings, queues, and streams. This
  skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: texml
  language: ruby
---

# Telnyx Texml - Ruby

## Installation

```bash
gem install telnyx
```

## List all TeXML Applications

`GET /texml_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.texml_applications.list

puts(page)
```

## Creates a TeXML Application

`POST /texml_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

texml_application = telnyx.texml_applications.create(friendly_name: "call-router", voice_url: "https://example.com")

puts(texml_application)
```

## Retrieve a TeXML Application

`GET /texml_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

texml_application = telnyx.texml_applications.retrieve("1293384261075731499")

puts(texml_application)
```

## Update a TeXML Application

`PATCH /texml_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

texml_application = telnyx.texml_applications.update(
  "1293384261075731499",
  friendly_name: "call-router",
  voice_url: "https://example.com"
)

puts(texml_application)
```

## Deletes a TeXML Application

`DELETE /texml_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

texml_application = telnyx.texml_applications.delete("1293384261075731499")

puts(texml_application)
```

## Fetch multiple call resources

`GET /texml/Accounts/{account_sid}/Calls`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.retrieve_calls("account_sid")

puts(response)
```

## Initiate an outbound call

`POST /texml/Accounts/{account_sid}/Calls`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.calls(
  "account_sid",
  application_sid: "example-app-sid",
  from: "+13120001234",
  to: "+13121230000"
)

puts(response)
```

## Fetch a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call = telnyx.texml.accounts.calls.retrieve("call_sid", account_sid: "account_sid")

puts(call)
```

## Update call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

call = telnyx.texml.accounts.calls.update("call_sid", account_sid: "account_sid")

puts(call)
```

## List conference participants

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.conferences.participants.retrieve_participants(
  "conference_sid",
  account_sid: "account_sid"
)

puts(response)
```

## Dial a new conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.conferences.participants.participants("conference_sid", account_sid: "account_sid")

puts(response)
```

## Get conference participant resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

participant = telnyx.texml.accounts.conferences.participants.retrieve(
  "call_sid_or_participant_label",
  account_sid: "account_sid",
  conference_sid: "conference_sid"
)

puts(participant)
```

## Update a conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

participant = telnyx.texml.accounts.conferences.participants.update(
  "call_sid_or_participant_label",
  account_sid: "account_sid",
  conference_sid: "conference_sid"
)

puts(participant)
```

## Delete a conference participant

`DELETE /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.texml.accounts.conferences.participants.delete(
  "call_sid_or_participant_label",
  account_sid: "account_sid",
  conference_sid: "conference_sid"
)

puts(result)
```

## List conference resources

`GET /texml/Accounts/{account_sid}/Conferences`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.conferences.retrieve_conferences("account_sid")

puts(response)
```

## Fetch a conference resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conference = telnyx.texml.accounts.conferences.retrieve("conference_sid", account_sid: "account_sid")

puts(conference)
```

## Update a conference resource

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

conference = telnyx.texml.accounts.conferences.update("conference_sid", account_sid: "account_sid")

puts(conference)
```

## List queue resources

`GET /texml/Accounts/{account_sid}/Queues`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.texml.accounts.queues.list("account_sid")

puts(page)
```

## Create a new queue

`POST /texml/Accounts/{account_sid}/Queues`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

queue = telnyx.texml.accounts.queues.create("account_sid")

puts(queue)
```

## Fetch a queue resource

`GET /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

queue = telnyx.texml.accounts.queues.retrieve("queue_sid", account_sid: "account_sid")

puts(queue)
```

## Update a queue resource

`POST /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

queue = telnyx.texml.accounts.queues.update("queue_sid", account_sid: "account_sid")

puts(queue)
```

## Delete a queue resource

`DELETE /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.texml.accounts.queues.delete("queue_sid", account_sid: "account_sid")

puts(result)
```

## Fetch multiple recording resources

`GET /texml/Accounts/{account_sid}/Recordings.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.retrieve_recordings_json("account_sid")

puts(response)
```

## Fetch recording resource

`GET /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

texml_get_call_recording_response_body = telnyx.texml.accounts.recordings.json.retrieve_recording_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid"
)

puts(texml_get_call_recording_response_body)
```

## Delete recording resource

`DELETE /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.texml.accounts.recordings.json.delete_recording_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid"
)

puts(result)
```

## Fetch recordings for a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.recordings_json.retrieve_recordings_json(
  "call_sid",
  account_sid: "account_sid"
)

puts(response)
```

## Request recording for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.recordings_json.recordings_json("call_sid", account_sid: "account_sid")

puts(response)
```

## Update recording on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings/{recording_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.recordings.recording_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid",
  call_sid: "call_sid"
)

puts(response)
```

## List conference recordings

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.conferences.retrieve_recordings("conference_sid", account_sid: "account_sid")

puts(response)
```

## Fetch recordings for a conference

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.conferences.retrieve_recordings_json("conference_sid", account_sid: "account_sid")

puts(response)
```

## Create a TeXML secret

`POST /texml/secrets`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.secrets(name: "My Secret Name", value: "My Secret Value")

puts(response)
```

## Request siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.siprec_json("call_sid", account_sid: "account_sid")

puts(response)
```

## Updates siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec/{siprec_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.siprec.siprec_sid_json(
  "siprec_sid",
  account_sid: "account_sid",
  call_sid: "call_sid"
)

puts(response)
```

## Start streaming media from a call.

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.streams_json("call_sid", account_sid: "account_sid")

puts(response)
```

## Update streaming on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams/{streaming_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.calls.streams.streaming_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid",
  call_sid: "call_sid"
)

puts(response)
```

## List recording transcriptions

`GET /texml/Accounts/{account_sid}/Transcriptions.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.retrieve_transcriptions_json("account_sid")

puts(response)
```

## Fetch a recording transcription resource

`GET /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.texml.accounts.transcriptions.json.retrieve_recording_transcription_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid"
)

puts(response)
```

## Delete a recording transcription

`DELETE /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.texml.accounts.transcriptions.json.delete_recording_transcription_sid_json(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  account_sid: "account_sid"
)

puts(result)
```
