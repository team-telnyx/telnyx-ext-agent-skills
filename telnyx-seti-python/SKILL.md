---
name: telnyx-seti-python
description: >-
  Access SETI (Space Exploration Telecommunications Infrastructure) APIs. This
  skill provides Python SDK examples.
metadata:
  author: telnyx
  product: seti
  language: python
---

# Telnyx Seti - Python

## Installation

```bash
pip install telnyx
```

## Retrieve Black Box Test Results

`GET /seti/black_box_test_results`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.seti.retrieve_black_box_test_results()
print(response.data)
```
