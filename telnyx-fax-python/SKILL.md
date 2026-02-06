---
name: telnyx-fax-python
description: >-
  Send and receive faxes programmatically. Manage fax applications and media.
  This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: fax
  language: python
---

# Telnyx Fax - Python

## Installation

```bash
pip install telnyx
```

## List all Fax Applications

`GET /fax_applications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.fax_applications.list()
page = page.data[0]
print(page.id)
```

## Creates a Fax Application

`POST /fax_applications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax_application = client.fax_applications.create(
    application_name="fax-router",
    webhook_event_url="https://example.com",
)
print(fax_application.data)
```

## Retrieve a Fax Application

`GET /fax_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax_application = client.fax_applications.retrieve(
    "1293384261075731499",
)
print(fax_application.data)
```

## Update a Fax Application

`PATCH /fax_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax_application = client.fax_applications.update(
    id="1293384261075731499",
    application_name="fax-router",
    webhook_event_url="https://example.com",
)
print(fax_application.data)
```

## Deletes a Fax Application

`DELETE /fax_applications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax_application = client.fax_applications.delete(
    "1293384261075731499",
)
print(fax_application.data)
```

## View a list of faxes

`GET /faxes`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.faxes.list()
page = page.data[0]
print(page.id)
```

## Send a fax

`POST /faxes`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax = client.faxes.create(
    connection_id="234423",
    from_="+13125790015",
    to="+13127367276",
)
print(fax.data)
```

## View a fax

`GET /faxes/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fax = client.faxes.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(fax.data)
```

## Delete a fax

`DELETE /faxes/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.faxes.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
```

## Cancel a fax

`POST /faxes/{id}/actions/cancel`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.faxes.actions.cancel(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.result)
```

## Refresh a fax

`POST /faxes/{id}/actions/refresh`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.faxes.actions.refresh(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.result)
```
