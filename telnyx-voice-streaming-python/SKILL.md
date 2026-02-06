---
name: telnyx-voice-streaming-python
description: >-
  Stream call audio in real-time, fork media to external destinations, and
  transcribe speech live. Use for real-time analytics and AI integrations. This
  skill provides Python SDK examples.
metadata:
  author: telnyx
  product: voice-streaming
  language: python
---

# Telnyx Voice Streaming - Python

## Installation

```bash
pip install telnyx
```

## Forking start

`POST /calls/{call_control_id}/actions/fork_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_forking(
    call_control_id="call_control_id",
)
print(response.data)
```

## Forking stop

`POST /calls/{call_control_id}/actions/fork_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_forking(
    call_control_id="call_control_id",
)
print(response.data)
```

## Streaming start

`POST /calls/{call_control_id}/actions/streaming_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_streaming(
    call_control_id="call_control_id",
)
print(response.data)
```

## Streaming stop

`POST /calls/{call_control_id}/actions/streaming_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_streaming(
    call_control_id="call_control_id",
)
print(response.data)
```

## Transcription start

`POST /calls/{call_control_id}/actions/transcription_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_transcription(
    call_control_id="call_control_id",
)
print(response.data)
```

## Transcription stop

`POST /calls/{call_control_id}/actions/transcription_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_transcription(
    call_control_id="call_control_id",
)
print(response.data)
```
