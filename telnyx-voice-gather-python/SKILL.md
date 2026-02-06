---
name: telnyx-voice-gather-python
description: >-
  Collect DTMF input and speech from callers using standard gather or AI-powered
  gather. Build interactive voice menus and AI voice assistants. This skill
  provides Python SDK examples.
metadata:
  author: telnyx
  product: voice-gather
  language: python
---

# Telnyx Voice Gather - Python

## Installation

```bash
pip install telnyx
```

## Add messages to AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_add_messages`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.add_ai_assistant_messages(
    call_control_id="call_control_id",
)
print(response.data)
```

## Start AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_ai_assistant(
    call_control_id="call_control_id",
)
print(response.data)
```

## Stop AI Assistant

`POST /calls/{call_control_id}/actions/ai_assistant_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_ai_assistant(
    call_control_id="call_control_id",
)
print(response.data)
```

## Gather stop

`POST /calls/{call_control_id}/actions/gather_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_gather(
    call_control_id="call_control_id",
)
print(response.data)
```

## Gather using AI

`POST /calls/{call_control_id}/actions/gather_using_ai`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.gather_using_ai(
    call_control_id="call_control_id",
    parameters={
        "properties": "bar",
        "required": "bar",
        "type": "bar",
    },
)
print(response.data)
```

## Gather using audio

`POST /calls/{call_control_id}/actions/gather_using_audio`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.gather_using_audio(
    call_control_id="call_control_id",
)
print(response.data)
```

## Gather using speak

`POST /calls/{call_control_id}/actions/gather_using_speak`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.gather_using_speak(
    call_control_id="call_control_id",
    payload="say this on call",
    voice="male",
)
print(response.data)
```

## Gather

`POST /calls/{call_control_id}/actions/gather`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.gather(
    call_control_id="call_control_id",
)
print(response.data)
```
