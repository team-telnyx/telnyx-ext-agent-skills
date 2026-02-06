---
name: telnyx-sip-integrations-python
description: >-
  Manage call recordings, media storage, Dialogflow integration, and external
  connections for SIP trunking. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: sip-integrations
  language: python
---

# Telnyx Sip Integrations - Python

## Installation

```bash
pip install telnyx
```

## List all call recordings

`GET /recordings`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.recordings.list()
page = page.data[0]
print(page.id)
```

## Retrieve a call recording

`GET /recordings/{recording_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
recording = client.recordings.retrieve(
    "recording_id",
)
print(recording.data)
```

## Delete a call recording

`DELETE /recordings/{recording_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
recording = client.recordings.delete(
    "recording_id",
)
print(recording.data)
```

## Delete a list of call recordings

`POST /recordings/actions/delete`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.recordings.actions.delete(
    ids=["428c31b6-7af4-4bcb-b7f5-5013ef9657c1", "428c31b6-7af4-4bcb-b7f5-5013ef9657c2"],
)
```

## List all recording transcriptions

`GET /recording_transcriptions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
recording_transcriptions = client.recording_transcriptions.list()
print(recording_transcriptions.data)
```

## Retrieve a recording transcription

`GET /recording_transcriptions/{recording_transcription_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
recording_transcription = client.recording_transcriptions.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(recording_transcription.data)
```

## Delete a recording transcription

`DELETE /recording_transcriptions/{recording_transcription_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
recording_transcription = client.recording_transcriptions.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(recording_transcription.data)
```

## Retrieve a stored credential

`GET /custom_storage_credentials/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
custom_storage_credential = client.custom_storage_credentials.retrieve(
    "connection_id",
)
print(custom_storage_credential.connection_id)
```

## Create a custom storage credential

`POST /custom_storage_credentials/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
custom_storage_credential = client.custom_storage_credentials.create(
    connection_id="connection_id",
    backend="gcs",
    configuration={
        "backend": "gcs"
    },
)
print(custom_storage_credential.connection_id)
```

## Update a stored credential

`PUT /custom_storage_credentials/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
custom_storage_credential = client.custom_storage_credentials.update(
    connection_id="connection_id",
    backend="gcs",
    configuration={
        "backend": "gcs"
    },
)
print(custom_storage_credential.connection_id)
```

## Delete a stored credential

`DELETE /custom_storage_credentials/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.custom_storage_credentials.delete(
    "connection_id",
)
```

## Retrieve stored Dialogflow Connection

`GET /dialogflow_connections/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dialogflow_connection = client.dialogflow_connections.retrieve(
    "connection_id",
)
print(dialogflow_connection.data)
```

## Create a Dialogflow Connection

`POST /dialogflow_connections/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dialogflow_connection = client.dialogflow_connections.create(
    connection_id="connection_id",
    service_account={
        "type": "bar",
        "project_id": "bar",
        "private_key_id": "bar",
        "private_key": "bar",
        "client_email": "bar",
        "client_id": "bar",
        "auth_uri": "bar",
        "token_uri": "bar",
        "auth_provider_x509_cert_url": "bar",
        "client_x509_cert_url": "bar",
    },
)
print(dialogflow_connection.data)
```

## Update stored Dialogflow Connection

`PUT /dialogflow_connections/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dialogflow_connection = client.dialogflow_connections.update(
    connection_id="connection_id",
    service_account={
        "type": "bar",
        "project_id": "bar",
        "private_key_id": "bar",
        "private_key": "bar",
        "client_email": "bar",
        "client_id": "bar",
        "auth_uri": "bar",
        "token_uri": "bar",
        "auth_provider_x509_cert_url": "bar",
        "client_x509_cert_url": "bar",
    },
)
print(dialogflow_connection.data)
```

## Delete stored Dialogflow Connection

`DELETE /dialogflow_connections/{connection_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.dialogflow_connections.delete(
    "connection_id",
)
```

## List all External Connections

`GET /external_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.external_connections.list()
page = page.data[0]
print(page.id)
```

## Creates an External Connection

`POST /external_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
external_connection = client.external_connections.create(
    external_sip_connection="zoom",
    outbound={},
)
print(external_connection.data)
```

## Retrieve an External Connection

`GET /external_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
external_connection = client.external_connections.retrieve(
    "id",
)
print(external_connection.data)
```

## Update an External Connection

`PATCH /external_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
external_connection = client.external_connections.update(
    id="id",
    outbound={
        "outbound_voice_profile_id": "outbound_voice_profile_id"
    },
)
print(external_connection.data)
```

## Deletes an External Connection

`DELETE /external_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
external_connection = client.external_connections.delete(
    "id",
)
print(external_connection.data)
```

## List all civic addresses and locations

`GET /external_connections/{id}/civic_addresses`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
civic_addresses = client.external_connections.civic_addresses.list(
    id="id",
)
print(civic_addresses.data)
```

## Retrieve a Civic Address

`GET /external_connections/{id}/civic_addresses/{address_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
civic_address = client.external_connections.civic_addresses.retrieve(
    address_id="318fb664-d341-44d2-8405-e6bfb9ced6d9",
    id="id",
)
print(civic_address.data)
```

## Update a location's static emergency address

`PATCH /external_connections/{id}/locations/{location_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.external_connections.update_location(
    location_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    static_emergency_address_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## List all phone numbers

`GET /external_connections/{id}/phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.external_connections.phone_numbers.list(
    id="id",
)
page = page.data[0]
print(page.civic_address_id)
```

## Retrieve a phone number

`GET /external_connections/{id}/phone_numbers/{phone_number_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number = client.external_connections.phone_numbers.retrieve(
    phone_number_id="1234567889",
    id="id",
)
print(phone_number.data)
```

## Update a phone number

`PATCH /external_connections/{id}/phone_numbers/{phone_number_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number = client.external_connections.phone_numbers.update(
    phone_number_id="1234567889",
    id="id",
)
print(phone_number.data)
```

## List all Releases

`GET /external_connections/{id}/releases`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.external_connections.releases.list(
    id="id",
)
page = page.data[0]
print(page.tenant_id)
```

## Retrieve a Release request

`GET /external_connections/{id}/releases/{release_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
release = client.external_connections.releases.retrieve(
    release_id="7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    id="id",
)
print(release.data)
```

## List all Upload requests

`GET /external_connections/{id}/uploads`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.external_connections.uploads.list(
    id="id",
)
page = page.data[0]
print(page.location_id)
```

## Creates an Upload request

`POST /external_connections/{id}/uploads`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
upload = client.external_connections.uploads.create(
    id="id",
    number_ids=["3920457616934164700", "3920457616934164701", "3920457616934164702", "3920457616934164703"],
)
print(upload.ticket_id)
```

## Refresh the status of all Upload requests

`POST /external_connections/{id}/uploads/refresh`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.external_connections.uploads.refresh_status(
    "id",
)
print(response.success)
```

## Get the count of pending upload requests

`GET /external_connections/{id}/uploads/status`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.external_connections.uploads.pending_count(
    "id",
)
print(response.data)
```

## Retrieve an Upload request

`GET /external_connections/{id}/uploads/{ticket_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
upload = client.external_connections.uploads.retrieve(
    ticket_id="7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    id="id",
)
print(upload.data)
```

## Retry an Upload request

`POST /external_connections/{id}/uploads/{ticket_id}/retry`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.external_connections.uploads.retry(
    ticket_id="7b6a6449-b055-45a6-81f6-f6f0dffa4cc6",
    id="id",
)
print(response.data)
```

## List all log messages

`GET /external_connections/log_messages`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.external_connections.log_messages.list()
page = page.log_messages[0]
print(page.code)
```

## Retrieve a log message

`GET /external_connections/log_messages/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
log_message = client.external_connections.log_messages.retrieve(
    "id",
)
print(log_message.log_messages)
```

## Dismiss a log message

`DELETE /external_connections/log_messages/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.external_connections.log_messages.dismiss(
    "id",
)
print(response.success)
```

## Refresh Operator Connect integration

`POST /operator_connect/actions/refresh`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.operator_connect.actions.refresh()
print(response.message)
```

## List uploaded media

`GET /media`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
media = client.media.list()
print(media.data)
```

## Upload media

`POST /media`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.media.upload(
    media_url="http://www.example.com/audio.mp3",
)
print(response.data)
```

## Retrieve stored media

`GET /media/{media_name}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
media = client.media.retrieve(
    "media_name",
)
print(media.data)
```

## Update stored media

`PUT /media/{media_name}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
media = client.media.update(
    media_name="media_name",
)
print(media.data)
```

## Deletes stored media

`DELETE /media/{media_name}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.media.delete(
    "media_name",
)
```

## Download stored media

`GET /media/{media_name}/download`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.media.download(
    "media_name",
)
print(response)
content = response.read()
print(content)
```
