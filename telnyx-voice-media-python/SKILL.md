---
name: telnyx-voice-media-python
description: >-
  Play audio files, use text-to-speech, and record calls. Use when building IVR
  systems, playing announcements, or recording conversations. This skill
  provides Python SDK examples.
metadata:
  author: telnyx
  product: voice-media
  language: python
---

# Telnyx Voice Media - Python

## Installation

```bash
pip install telnyx
```

## Play audio URL

`POST /calls/{call_control_id}/actions/playback_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_playback(
    call_control_id="call_control_id",
)
print(response.data)
```

## Stop audio playback

`POST /calls/{call_control_id}/actions/playback_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_playback(
    call_control_id="call_control_id",
)
print(response.data)
```

## Record pause

`POST /calls/{call_control_id}/actions/record_pause`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.pause_recording(
    call_control_id="call_control_id",
)
print(response.data)
```

## Record resume

`POST /calls/{call_control_id}/actions/record_resume`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.resume_recording(
    call_control_id="call_control_id",
)
print(response.data)
```

## Recording start

`POST /calls/{call_control_id}/actions/record_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_recording(
    call_control_id="call_control_id",
    channels="single",
    format="wav",
)
print(response.data)
```

## Recording stop

`POST /calls/{call_control_id}/actions/record_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_recording(
    call_control_id="call_control_id",
)
print(response.data)
```

## Speak text

`POST /calls/{call_control_id}/actions/speak`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.speak(
    call_control_id="call_control_id",
    payload="Say this on the call",
    voice="female",
)
print(response.data)
```
