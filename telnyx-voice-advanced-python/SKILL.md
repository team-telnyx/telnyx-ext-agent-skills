---
name: telnyx-voice-advanced-python
description: >-
  Advanced call control features including DTMF sending, SIPREC recording, noise
  suppression, client state, and supervisor controls. This skill provides Python
  SDK examples.
metadata:
  author: telnyx
  product: voice-advanced
  language: python
---

# Telnyx Voice Advanced - Python

## Installation

```bash
pip install telnyx
```

## Update client state

`PUT /calls/{call_control_id}/actions/client_state_update`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.update_client_state(
    call_control_id="call_control_id",
    client_state="aGF2ZSBhIG5pY2UgZGF5ID1d",
)
print(response.data)
```

## Send DTMF

`POST /calls/{call_control_id}/actions/send_dtmf`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.send_dtmf(
    call_control_id="call_control_id",
    digits="1www2WABCDw9",
)
print(response.data)
```

## SIPREC start

`POST /calls/{call_control_id}/actions/siprec_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_siprec(
    call_control_id="call_control_id",
)
print(response.data)
```

## SIPREC stop

`POST /calls/{call_control_id}/actions/siprec_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_siprec(
    call_control_id="call_control_id",
)
print(response.data)
```

## Noise Suppression Start (BETA)

`POST /calls/{call_control_id}/actions/suppression_start`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.start_noise_suppression(
    call_control_id="call_control_id",
)
print(response.data)
```

## Noise Suppression Stop (BETA)

`POST /calls/{call_control_id}/actions/suppression_stop`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.stop_noise_suppression(
    call_control_id="call_control_id",
)
print(response.data)
```

## Switch supervisor role

`POST /calls/{call_control_id}/actions/switch_supervisor_role`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.calls.actions.switch_supervisor_role(
    call_control_id="call_control_id",
    role="barge",
)
print(response.data)
```
