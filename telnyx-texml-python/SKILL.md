---
name: telnyx-texml-python
description: >-
  Build voice applications using TeXML markup language (TwiML-compatible).
  Manage applications, calls, conferences, recordings, queues, and streams. This
  skill provides Python SDK examples.
metadata:
  author: telnyx
  product: texml
  language: python
---

# Telnyx Texml - Python

## Installation

```bash
pip install telnyx
```

## List all TeXML Applications

`GET /texml_applications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.texml_applications.list()
page = page.data[0]
print(page.id)
```

## Creates a TeXML Application

`POST /texml_applications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
texml_application = client.texml_applications.create(
    friendly_name="call-router",
    voice_url="https://example.com",
)
print(texml_application.data)
```

## Retrieve a TeXML Application

`GET /texml_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
texml_application = client.texml_applications.retrieve(
    "1293384261075731499",
)
print(texml_application.data)
```

## Update a TeXML Application

`PATCH /texml_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
texml_application = client.texml_applications.update(
    id="1293384261075731499",
    friendly_name="call-router",
    voice_url="https://example.com",
)
print(texml_application.data)
```

## Deletes a TeXML Application

`DELETE /texml_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
texml_application = client.texml_applications.delete(
    "1293384261075731499",
)
print(texml_application.data)
```

## Fetch multiple call resources

`GET /texml/Accounts/{account_sid}/Calls`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.retrieve_calls(
    account_sid="account_sid",
)
print(response.calls)
```

## Initiate an outbound call

`POST /texml/Accounts/{account_sid}/Calls`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.calls(
    account_sid="account_sid",
    application_sid="example-app-sid",
    from_="+13120001234",
    to="+13121230000",
)
print(response.from_)
```

## Fetch a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
call = client.texml.accounts.calls.retrieve(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(call.account_sid)
```

## Update call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
call = client.texml.accounts.calls.update(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(call.account_sid)
```

## List conference participants

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.conferences.participants.retrieve_participants(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(response.end)
```

## Dial a new conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.conferences.participants.participants(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(response.account_sid)
```

## Get conference participant resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
participant = client.texml.accounts.conferences.participants.retrieve(
    call_sid_or_participant_label="call_sid_or_participant_label",
    account_sid="account_sid",
    conference_sid="conference_sid",
)
print(participant.account_sid)
```

## Update a conference participant

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
participant = client.texml.accounts.conferences.participants.update(
    call_sid_or_participant_label="call_sid_or_participant_label",
    account_sid="account_sid",
    conference_sid="conference_sid",
)
print(participant.account_sid)
```

## Delete a conference participant

`DELETE /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Participants/{call_sid_or_participant_label}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.texml.accounts.conferences.participants.delete(
    call_sid_or_participant_label="call_sid_or_participant_label",
    account_sid="account_sid",
    conference_sid="conference_sid",
)
```

## List conference resources

`GET /texml/Accounts/{account_sid}/Conferences`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.conferences.retrieve_conferences(
    account_sid="account_sid",
)
print(response.conferences)
```

## Fetch a conference resource

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conference = client.texml.accounts.conferences.retrieve(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(conference.account_sid)
```

## Update a conference resource

`POST /texml/Accounts/{account_sid}/Conferences/{conference_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conference = client.texml.accounts.conferences.update(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(conference.account_sid)
```

## List queue resources

`GET /texml/Accounts/{account_sid}/Queues`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.texml.accounts.queues.list(
    account_sid="account_sid",
)
page = page.queues[0]
print(page.account_sid)
```

## Create a new queue

`POST /texml/Accounts/{account_sid}/Queues`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
queue = client.texml.accounts.queues.create(
    account_sid="account_sid",
)
print(queue.account_sid)
```

## Fetch a queue resource

`GET /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
queue = client.texml.accounts.queues.retrieve(
    queue_sid="queue_sid",
    account_sid="account_sid",
)
print(queue.account_sid)
```

## Update a queue resource

`POST /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
queue = client.texml.accounts.queues.update(
    queue_sid="queue_sid",
    account_sid="account_sid",
)
print(queue.account_sid)
```

## Delete a queue resource

`DELETE /texml/Accounts/{account_sid}/Queues/{queue_sid}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.texml.accounts.queues.delete(
    queue_sid="queue_sid",
    account_sid="account_sid",
)
```

## Fetch multiple recording resources

`GET /texml/Accounts/{account_sid}/Recordings.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.retrieve_recordings_json(
    account_sid="account_sid",
)
print(response.end)
```

## Fetch recording resource

`GET /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
texml_get_call_recording_response_body = client.texml.accounts.recordings.json.retrieve_recording_sid_json(
    recording_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
)
print(texml_get_call_recording_response_body.account_sid)
```

## Delete recording resource

`DELETE /texml/Accounts/{account_sid}/Recordings/{recording_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.texml.accounts.recordings.json.delete_recording_sid_json(
    recording_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
)
```

## Fetch recordings for a call

`GET /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.recordings_json.retrieve_recordings_json(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(response.end)
```

## Request recording for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.recordings_json.recordings_json(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(response.account_sid)
```

## Update recording on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Recordings/{recording_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.recordings.recording_sid_json(
    recording_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
    call_sid="call_sid",
)
print(response.account_sid)
```

## List conference recordings

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.conferences.retrieve_recordings(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(response.end)
```

## Fetch recordings for a conference

`GET /texml/Accounts/{account_sid}/Conferences/{conference_sid}/Recordings.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.conferences.retrieve_recordings_json(
    conference_sid="conference_sid",
    account_sid="account_sid",
)
print(response.end)
```

## Create a TeXML secret

`POST /texml/secrets`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.secrets(
    name="My Secret Name",
    value="My Secret Value",
)
print(response.data)
```

## Request siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.siprec_json(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(response.account_sid)
```

## Updates siprec session for a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Siprec/{siprec_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.siprec.siprec_sid_json(
    siprec_sid="siprec_sid",
    account_sid="account_sid",
    call_sid="call_sid",
)
print(response.account_sid)
```

## Start streaming media from a call.

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.streams_json(
    call_sid="call_sid",
    account_sid="account_sid",
)
print(response.account_sid)
```

## Update streaming on a call

`POST /texml/Accounts/{account_sid}/Calls/{call_sid}/Streams/{streaming_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.calls.streams.streaming_sid_json(
    streaming_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
    call_sid="call_sid",
)
print(response.account_sid)
```

## List recording transcriptions

`GET /texml/Accounts/{account_sid}/Transcriptions.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.retrieve_transcriptions_json(
    account_sid="account_sid",
)
print(response.end)
```

## Fetch a recording transcription resource

`GET /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.texml.accounts.transcriptions.json.retrieve_recording_transcription_sid_json(
    recording_transcription_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
)
print(response.account_sid)
```

## Delete a recording transcription

`DELETE /texml/Accounts/{account_sid}/Transcriptions/{recording_transcription_sid}.json`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.texml.accounts.transcriptions.json.delete_recording_transcription_sid_json(
    recording_transcription_sid="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    account_sid="account_sid",
)
```
