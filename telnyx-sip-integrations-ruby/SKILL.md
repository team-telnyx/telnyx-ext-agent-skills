---
name: telnyx-sip-integrations-ruby
description: >-
  Manage call recordings, media storage, Dialogflow integration, and external
  connections for SIP trunking. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: sip-integrations
  language: ruby
---

# Telnyx Sip Integrations - Ruby

## Installation

```bash
gem install telnyx
```

## List all call recordings

`GET /recordings`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.recordings.list

puts(page)
```

## Retrieve a call recording

`GET /recordings/{recording_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

recording = telnyx.recordings.retrieve("recording_id")

puts(recording)
```

## Delete a call recording

`DELETE /recordings/{recording_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

recording = telnyx.recordings.delete("recording_id")

puts(recording)
```

## Delete a list of call recordings

`POST /recordings/actions/delete`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.recordings.actions.delete(
  ids: ["428c31b6-7af4-4bcb-b7f5-5013ef9657c1", "428c31b6-7af4-4bcb-b7f5-5013ef9657c2"]
)

puts(result)
```

## List all recording transcriptions

`GET /recording_transcriptions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

recording_transcriptions = telnyx.recording_transcriptions.list

puts(recording_transcriptions)
```

## Retrieve a recording transcription

`GET /recording_transcriptions/{recording_transcription_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

recording_transcription = telnyx.recording_transcriptions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(recording_transcription)
```

## Delete a recording transcription

`DELETE /recording_transcriptions/{recording_transcription_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

recording_transcription = telnyx.recording_transcriptions.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(recording_transcription)
```

## Retrieve a stored credential

`GET /custom_storage_credentials/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

custom_storage_credential = telnyx.custom_storage_credentials.retrieve("connection_id")

puts(custom_storage_credential)
```

## Create a custom storage credential

`POST /custom_storage_credentials/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

custom_storage_credential = telnyx.custom_storage_credentials.create("connection_id", backend: :gcs, configuration: {backend: :gcs})

puts(custom_storage_credential)
```

## Update a stored credential

`PUT /custom_storage_credentials/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

custom_storage_credential = telnyx.custom_storage_credentials.update("connection_id", backend: :gcs, configuration: {backend: :gcs})

puts(custom_storage_credential)
```

## Delete a stored credential

`DELETE /custom_storage_credentials/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.custom_storage_credentials.delete("connection_id")

puts(result)
```

## Retrieve stored Dialogflow Connection

`GET /dialogflow_connections/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dialogflow_connection = telnyx.dialogflow_connections.retrieve("connection_id")

puts(dialogflow_connection)
```

## Create a Dialogflow Connection

`POST /dialogflow_connections/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dialogflow_connection = telnyx.dialogflow_connections.create(
  "connection_id",
  service_account: {
    type: "bar",
    project_id: "bar",
    private_key_id: "bar",
    private_key: "bar",
    client_email: "bar",
    client_id: "bar",
    auth_uri: "bar",
    token_uri: "bar",
    auth_provider_x509_cert_url: "bar",
    client_x509_cert_url: "bar"
  }
)

puts(dialogflow_connection)
```

## Update stored Dialogflow Connection

`PUT /dialogflow_connections/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

dialogflow_connection = telnyx.dialogflow_connections.update(
  "connection_id",
  service_account: {
    type: "bar",
    project_id: "bar",
    private_key_id: "bar",
    private_key: "bar",
    client_email: "bar",
    client_id: "bar",
    auth_uri: "bar",
    token_uri: "bar",
    auth_provider_x509_cert_url: "bar",
    client_x509_cert_url: "bar"
  }
)

puts(dialogflow_connection)
```

## Delete stored Dialogflow Connection

`DELETE /dialogflow_connections/{connection_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.dialogflow_connections.delete("connection_id")

puts(result)
```

## List all External Connections

`GET /external_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.external_connections.list

puts(page)
```

## Creates an External Connection

`POST /external_connections`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

external_connection = telnyx.external_connections.create(external_sip_connection: :zoom, outbound: {})

puts(external_connection)
```

## Retrieve an External Connection

`GET /external_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

external_connection = telnyx.external_connections.retrieve("id")

puts(external_connection)
```

## Update an External Connection

`PATCH /external_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

external_connection = telnyx.external_connections.update(
  "id",
  outbound: {outbound_voice_profile_id: "outbound_voice_profile_id"}
)

puts(external_connection)
```

## Deletes an External Connection

`DELETE /external_connections/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

external_connection = telnyx.external_connections.delete("id")

puts(external_connection)
```

## List all civic addresses and locations

`GET /external_connections/{id}/civic_addresses`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

civic_addresses = telnyx.external_connections.civic_addresses.list("id")

puts(civic_addresses)
```

## Retrieve a Civic Address

`GET /external_connections/{id}/civic_addresses/{address_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

civic_address = telnyx.external_connections.civic_addresses.retrieve("318fb664-d341-44d2-8405-e6bfb9ced6d9", id: "id")

puts(civic_address)
```

## Update a location's static emergency address

`PATCH /external_connections/{id}/locations/{location_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.external_connections.update_location(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  static_emergency_address_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(response)
```

## List all phone numbers

`GET /external_connections/{id}/phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.external_connections.phone_numbers.list("id")

puts(page)
```

## Retrieve a phone number

`GET /external_connections/{id}/phone_numbers/{phone_number_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number = telnyx.external_connections.phone_numbers.retrieve("1234567889", id: "id")

puts(phone_number)
```

## Update a phone number

`PATCH /external_connections/{id}/phone_numbers/{phone_number_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number = telnyx.external_connections.phone_numbers.update("1234567889", id: "id")

puts(phone_number)
```

## List all Releases

`GET /external_connections/{id}/releases`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.external_connections.releases.list("id")

puts(page)
```

## Retrieve a Release request

`GET /external_connections/{id}/releases/{release_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

release = telnyx.external_connections.releases.retrieve("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

puts(release)
```

## List all Upload requests

`GET /external_connections/{id}/uploads`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.external_connections.uploads.list("id")

puts(page)
```

## Creates an Upload request

`POST /external_connections/{id}/uploads`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

upload = telnyx.external_connections.uploads.create(
  "id",
  number_ids: ["3920457616934164700", "3920457616934164701", "3920457616934164702", "3920457616934164703"]
)

puts(upload)
```

## Refresh the status of all Upload requests

`POST /external_connections/{id}/uploads/refresh`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.external_connections.uploads.refresh_status("id")

puts(response)
```

## Get the count of pending upload requests

`GET /external_connections/{id}/uploads/status`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.external_connections.uploads.pending_count("id")

puts(response)
```

## Retrieve an Upload request

`GET /external_connections/{id}/uploads/{ticket_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

upload = telnyx.external_connections.uploads.retrieve("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

puts(upload)
```

## Retry an Upload request

`POST /external_connections/{id}/uploads/{ticket_id}/retry`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.external_connections.uploads.retry_("7b6a6449-b055-45a6-81f6-f6f0dffa4cc6", id: "id")

puts(response)
```

## List all log messages

`GET /external_connections/log_messages`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.external_connections.log_messages.list

puts(page)
```

## Retrieve a log message

`GET /external_connections/log_messages/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

log_message = telnyx.external_connections.log_messages.retrieve("id")

puts(log_message)
```

## Dismiss a log message

`DELETE /external_connections/log_messages/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.external_connections.log_messages.dismiss("id")

puts(response)
```

## Refresh Operator Connect integration

`POST /operator_connect/actions/refresh`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.operator_connect.actions.refresh

puts(response)
```

## List uploaded media

`GET /media`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

media = telnyx.media.list

puts(media)
```

## Upload media

`POST /media`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.media.upload(media_url: "http://www.example.com/audio.mp3")

puts(response)
```

## Retrieve stored media

`GET /media/{media_name}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

media = telnyx.media.retrieve("media_name")

puts(media)
```

## Update stored media

`PUT /media/{media_name}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

media = telnyx.media.update("media_name")

puts(media)
```

## Deletes stored media

`DELETE /media/{media_name}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.media.delete("media_name")

puts(result)
```

## Download stored media

`GET /media/{media_name}/download`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.media.download("media_name")

puts(response)
```
