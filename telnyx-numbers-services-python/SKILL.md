---
name: telnyx-numbers-services-python
description: >-
  Configure voicemail, voice channels, and emergency (E911) services for your
  phone numbers. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: numbers-services
  language: python
---

# Telnyx Numbers Services - Python

## Installation

```bash
pip install telnyx
```

## List dynamic emergency addresses

`GET /dynamic_emergency_addresses`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.dynamic_emergency_addresses.list()
page = page.data[0]
print(page.id)
```

## Create a dynamic emergency address.

`POST /dynamic_emergency_addresses`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_address = client.dynamic_emergency_addresses.create(
    administrative_area="TX",
    country_code="US",
    house_number="600",
    locality="Austin",
    postal_code="78701",
    street_name="Congress",
)
print(dynamic_emergency_address.data)
```

## Get a dynamic emergency address

`GET /dynamic_emergency_addresses/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_address = client.dynamic_emergency_addresses.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(dynamic_emergency_address.data)
```

## Delete a dynamic emergency address

`DELETE /dynamic_emergency_addresses/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_address = client.dynamic_emergency_addresses.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(dynamic_emergency_address.data)
```

## List dynamic emergency endpoints

`GET /dynamic_emergency_endpoints`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.dynamic_emergency_endpoints.list()
page = page.data[0]
print(page.dynamic_emergency_address_id)
```

## Create a dynamic emergency endpoint.

`POST /dynamic_emergency_endpoints`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_endpoint = client.dynamic_emergency_endpoints.create(
    callback_number="+13125550000",
    caller_name="Jane Doe Desk Phone",
    dynamic_emergency_address_id="0ccc7b54-4df3-4bca-a65a-3da1ecc777f0",
)
print(dynamic_emergency_endpoint.data)
```

## Get a dynamic emergency endpoint

`GET /dynamic_emergency_endpoints/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_endpoint = client.dynamic_emergency_endpoints.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(dynamic_emergency_endpoint.data)
```

## Delete a dynamic emergency endpoint

`DELETE /dynamic_emergency_endpoints/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
dynamic_emergency_endpoint = client.dynamic_emergency_endpoints.delete(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(dynamic_emergency_endpoint.data)
```

## List your voice channels for non-US zones

`GET /channel_zones`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.channel_zones.list()
page = page.data[0]
print(page.id)
```

## Update voice channels for non-US Zones

`PUT /channel_zones/{channel_zone_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
channel_zone = client.channel_zones.update(
    channel_zone_id="channel_zone_id",
    channels=0,
)
print(channel_zone.id)
```

## List your voice channels for US Zone

`GET /inbound_channels`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inbound_channels = client.inbound_channels.list()
print(inbound_channels.data)
```

## Update voice channels for US Zone

`PATCH /inbound_channels`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inbound_channel = client.inbound_channels.update(
    channels=7,
)
print(inbound_channel.data)
```

## List All Numbers using Channel Billing

`GET /list`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.list.retrieve_all()
print(response.data)
```

## List Numbers using Channel Billing for a specific Zone

`GET /list/{channel_zone_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.list.retrieve_by_zone(
    "channel_zone_id",
)
print(response.data)
```

## Get voicemail

`GET /phone_numbers/{phone_number_id}/voicemail`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voicemail = client.phone_numbers.voicemail.retrieve(
    "123455678900",
)
print(voicemail.data)
```

## Create voicemail

`POST /phone_numbers/{phone_number_id}/voicemail`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voicemail = client.phone_numbers.voicemail.create(
    phone_number_id="123455678900",
)
print(voicemail.data)
```

## Update voicemail

`PATCH /phone_numbers/{phone_number_id}/voicemail`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
voicemail = client.phone_numbers.voicemail.update(
    phone_number_id="123455678900",
)
print(voicemail.data)
```
