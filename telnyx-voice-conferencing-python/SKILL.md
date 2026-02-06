---
name: telnyx-voice-conferencing-python
description: >-
  Create and manage conference calls, queues, and multi-party sessions. Use when
  building call centers or conferencing applications. This skill provides Python
  SDK examples.
metadata:
  author: telnyx
  product: voice-conferencing
  language: python
---

# Telnyx Voice Conferencing - Python

## Installation

```bash
pip install telnyx
```

## Enqueue call

`POST /calls/{call_control_id}/actions/enqueue`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.enqueue(
    call_control_id="call_control_id",
    queue_name="support",
)
print(response.data)
```

## Remove call from a queue

`POST /calls/{call_control_id}/actions/leave_queue`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.leave_queue(
    call_control_id="call_control_id",
)
print(response.data)
```

## List conferences

`GET /conferences`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.conferences.list()
page = page.data[0]
print(page.id)
```

## Create conference

`POST /conferences`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conference = client.conferences.create(
    call_control_id="v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
    name="Business",
)
print(conference.data)
```

## Retrieve a conference

`GET /conferences/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
conference = client.conferences.retrieve(
    id="id",
)
print(conference.data)
```

## Hold conference participants

`POST /conferences/{id}/actions/hold`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.hold(
    id="id",
)
print(response.data)
```

## Join a conference

`POST /conferences/{id}/actions/join`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.join(
    id="id",
    call_control_id="v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
)
print(response.data)
```

## Leave a conference

`POST /conferences/{id}/actions/leave`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.leave(
    id="id",
    call_control_id="c46e06d7-b78f-4b13-96b6-c576af9640ff",
)
print(response.data)
```

## Mute conference participants

`POST /conferences/{id}/actions/mute`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.mute(
    id="id",
)
print(response.data)
```

## Play audio to conference participants

`POST /conferences/{id}/actions/play`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.play(
    id="id",
)
print(response.data)
```

## Conference recording pause

`POST /conferences/{id}/actions/record_pause`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.record_pause(
    id="id",
)
print(response.data)
```

## Conference recording resume

`POST /conferences/{id}/actions/record_resume`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.record_resume(
    id="id",
)
print(response.data)
```

## Conference recording start

`POST /conferences/{id}/actions/record_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.record_start(
    id="id",
    format="wav",
)
print(response.data)
```

## Conference recording stop

`POST /conferences/{id}/actions/record_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.record_stop(
    id="id",
)
print(response.data)
```

## Speak text to conference participants

`POST /conferences/{id}/actions/speak`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.speak(
    id="id",
    payload="Say this to participants",
    voice="female",
)
print(response.data)
```

## Stop audio being played on the conference

`POST /conferences/{id}/actions/stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.stop(
    id="id",
)
print(response.data)
```

## Unhold conference participants

`POST /conferences/{id}/actions/unhold`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.unhold(
    id="id",
    call_control_ids=["v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg"],
)
print(response.data)
```

## Unmute conference participants

`POST /conferences/{id}/actions/unmute`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.conferences.actions.unmute(
    id="id",
)
print(response.data)
```

## Update conference participant

`POST /conferences/{id}/actions/update`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
action = client.conferences.actions.update(
    id="id",
    call_control_id="v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
    supervisor_role="whisper",
)
print(action.data)
```

## List conference participants

`GET /conferences/{conference_id}/participants`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.conferences.list_participants(
    conference_id="conference_id",
)
page = page.data[0]
print(page.id)
```
