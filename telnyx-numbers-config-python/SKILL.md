---
name: telnyx-numbers-config-python
description: >-
  Configure phone number settings including caller ID, call forwarding,
  messaging enablement, and connection assignments. This skill provides Python
  SDK examples.
metadata:
  author: telnyx
  product: numbers-config
  language: python
---

# Telnyx Numbers Config - Python

## Installation

```bash
pip install telnyx
```

## Lists the phone number blocks jobs

`GET /phone_number_blocks/jobs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_number_blocks.jobs.list()
page = page.data[0]
print(page.id)
```

## Retrieves a phone number blocks job

`GET /phone_number_blocks/jobs/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
job = client.phone_number_blocks.jobs.retrieve(
    "id",
)
print(job.data)
```

## Deletes all numbers associated with a phone number block

`POST /phone_number_blocks/jobs/delete_phone_number_block`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_number_blocks.jobs.delete_phone_number_block(
    phone_number_block_id="f3946371-7199-4261-9c3d-81a0d7935146",
)
print(response.data)
```

## List phone numbers

`GET /phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_numbers.list()
page = page.data[0]
print(page.id)
```

## Retrieve a phone number

`GET /phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number = client.phone_numbers.retrieve(
    "1293384261075731499",
)
print(phone_number.data)
```

## Update a phone number

`PATCH /phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number = client.phone_numbers.update(
    phone_number_id="1293384261075731499",
)
print(phone_number.data)
```

## Delete a phone number

`DELETE /phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_number = client.phone_numbers.delete(
    "1293384261075731499",
)
print(phone_number.data)
```

## Change the bundle status for a phone number (set to being in a bundle or remove from a bundle)

`PATCH /phone_numbers/{id}/actions/bundle_status_change`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.actions.change_bundle_status(
    id="1293384261075731499",
    bundle_id="5194d8fc-87e6-4188-baa9-1c434bbe861b",
)
print(response.data)
```

## Enable emergency for a phone number

`POST /phone_numbers/{id}/actions/enable_emergency`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.actions.enable_emergency(
    id="1293384261075731499",
    emergency_address_id="53829456729313",
    emergency_enabled=True,
)
print(response.data)
```

## Retrieve a phone number with voice settings

`GET /phone_numbers/{id}/voice`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.phone_numbers.voice.retrieve(
    "1293384261075731499",
)
print(voice.data)
```

## Update a phone number with voice settings

`PATCH /phone_numbers/{id}/voice`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voice = client.phone_numbers.voice.update(
    id="1293384261075731499",
)
print(voice.data)
```

## Verify ownership of phone numbers

`POST /phone_numbers/actions/verify_ownership`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.actions.verify_ownership(
    phone_numbers=["+15551234567"],
)
print(response.data)
```

## List CSV downloads

`GET /phone_numbers/csv_downloads`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_numbers.csv_downloads.list()
page = page.data[0]
print(page.id)
```

## Create a CSV download

`POST /phone_numbers/csv_downloads`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
csv_download = client.phone_numbers.csv_downloads.create()
print(csv_download.data)
```

## Retrieve a CSV download

`GET /phone_numbers/csv_downloads/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
csv_download = client.phone_numbers.csv_downloads.retrieve(
    "id",
)
print(csv_download.data)
```

## Lists the phone numbers jobs

`GET /phone_numbers/jobs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_numbers.jobs.list()
page = page.data[0]
print(page.id)
```

## Retrieve a phone numbers job

`GET /phone_numbers/jobs/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
job = client.phone_numbers.jobs.retrieve(
    "id",
)
print(job.data)
```

## Delete a batch of numbers

`POST /phone_numbers/jobs/delete_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.jobs.delete_batch(
    phone_numbers=["+19705555098", "+19715555098", "32873127836"],
)
print(response.data)
```

## Update the emergency settings from a batch of numbers

`POST /phone_numbers/jobs/update_emergency_settings`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.jobs.update_emergency_settings_batch(
    emergency_enabled=True,
    phone_numbers=["+19705555098", "+19715555098", "32873127836"],
)
print(response.data)
```

## Update a batch of numbers

`POST /phone_numbers/jobs/update_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.phone_numbers.jobs.update_batch(
    phone_numbers=["1583466971586889004", "+13127367254"],
)
print(response.data)
```

## Retrieve regulatory requirements for a list of phone numbers

`GET /phone_numbers/regulatory_requirements`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
phone_numbers_regulatory_requirement = client.phone_numbers_regulatory_requirements.retrieve()
print(phone_numbers_regulatory_requirement.data)
```

## Slim List phone numbers

`GET /phone_numbers/slim`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_numbers.slim_list()
page = page.data[0]
print(page.id)
```

## List phone numbers with voice settings

`GET /phone_numbers/voice`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.phone_numbers.voice.list()
page = page.data[0]
print(page.id)
```

## List Mobile Phone Numbers

`GET /v2/mobile_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.mobile_phone_numbers.list()
page = page.data[0]
print(page.id)
```

## Retrieve a Mobile Phone Number

`GET /v2/mobile_phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_phone_number = client.mobile_phone_numbers.retrieve(
    "id",
)
print(mobile_phone_number.data)
```

## Update a Mobile Phone Number

`PATCH /v2/mobile_phone_numbers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_phone_number = client.mobile_phone_numbers.update(
    id="id",
)
print(mobile_phone_number.data)
```
