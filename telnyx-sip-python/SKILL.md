---
name: telnyx-sip-python
description: >-
  Configure SIP trunking connections and outbound voice profiles. Use when
  connecting PBX systems or managing SIP infrastructure. This skill provides
  Python SDK examples.
metadata:
  author: telnyx
  product: sip
  language: python
---

# Telnyx Sip - Python

## Installation

```bash
pip install telnyx
```

## Get all outbound voice profiles

`GET /outbound_voice_profiles`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.outbound_voice_profiles.list()
page = page.data[0]
print(page.id)
```

## Create an outbound voice profile

`POST /outbound_voice_profiles`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
outbound_voice_profile = client.outbound_voice_profiles.create(
    name="office",
)
print(outbound_voice_profile.data)
```

## Retrieve an outbound voice profile

`GET /outbound_voice_profiles/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
outbound_voice_profile = client.outbound_voice_profiles.retrieve(
    "1293384261075731499",
)
print(outbound_voice_profile.data)
```

## Updates an existing outbound voice profile.

`PATCH /outbound_voice_profiles/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
outbound_voice_profile = client.outbound_voice_profiles.update(
    id="1293384261075731499",
    name="office",
)
print(outbound_voice_profile.data)
```

## Delete an outbound voice profile

`DELETE /outbound_voice_profiles/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
outbound_voice_profile = client.outbound_voice_profiles.delete(
    "1293384261075731499",
)
print(outbound_voice_profile.data)
```

## List connections

`GET /connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.connections.list()
page = page.data[0]
print(page.id)
```

## Retrieve a connection

`GET /connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
connection = client.connections.retrieve(
    "id",
)
print(connection.data)
```

## List credential connections

`GET /credential_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.credential_connections.list()
page = page.data[0]
print(page.id)
```

## Create a credential connection

`POST /credential_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
credential_connection = client.credential_connections.create(
    connection_name="my name",
    password="my123secure456password789",
    user_name="myusername123",
)
print(credential_connection.data)
```

## Retrieve a credential connection

`GET /credential_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
credential_connection = client.credential_connections.retrieve(
    "id",
)
print(credential_connection.data)
```

## Update a credential connection

`PATCH /credential_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
credential_connection = client.credential_connections.update(
    id="id",
)
print(credential_connection.data)
```

## Delete a credential connection

`DELETE /credential_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
credential_connection = client.credential_connections.delete(
    "id",
)
print(credential_connection.data)
```

## Check a Credential Connection Registration Status

`POST /credential_connections/{id}/actions/check_registration_status`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.credential_connections.actions.check_registration_status(
    "id",
)
print(response.data)
```

## List Ips

`GET /ips`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ips.list()
page = page.data[0]
print(page.id)
```

## Create an Ip

`POST /ips`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip = client.ips.create(
    ip_address="192.168.0.0",
)
print(ip.data)
```

## Retrieve an Ip

`GET /ips/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip = client.ips.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(ip.data)
```

## Update an Ip

`PATCH /ips/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip = client.ips.update(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    ip_address="192.168.0.0",
)
print(ip.data)
```

## Delete an Ip

`DELETE /ips/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip = client.ips.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(ip.data)
```

## List Ip connections

`GET /ip_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ip_connections.list()
page = page.data[0]
print(page.id)
```

## Create an Ip connection

`POST /ip_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip_connection = client.ip_connections.create()
print(ip_connection.data)
```

## Retrieve an Ip connection

`GET /ip_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip_connection = client.ip_connections.retrieve(
    "id",
)
print(ip_connection.data)
```

## Update an Ip connection

`PATCH /ip_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip_connection = client.ip_connections.update(
    id="id",
)
print(ip_connection.data)
```

## Delete an Ip connection

`DELETE /ip_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ip_connection = client.ip_connections.delete(
    "id",
)
print(ip_connection.data)
```

## List FQDNs

`GET /fqdns`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.fqdns.list()
page = page.data[0]
print(page.id)
```

## Create an FQDN

`POST /fqdns`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn = client.fqdns.create(
    connection_id="1516447646313612565",
    dns_record_type="a",
    fqdn="example.com",
)
print(fqdn.data)
```

## Retrieve an FQDN

`GET /fqdns/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn = client.fqdns.retrieve(
    "id",
)
print(fqdn.data)
```

## Update an FQDN

`PATCH /fqdns/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn = client.fqdns.update(
    id="id",
)
print(fqdn.data)
```

## Delete an FQDN

`DELETE /fqdns/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn = client.fqdns.delete(
    "id",
)
print(fqdn.data)
```

## List FQDN connections

`GET /fqdn_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.fqdn_connections.list()
page = page.data[0]
print(page.id)
```

## Create an FQDN connection

`POST /fqdn_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn_connection = client.fqdn_connections.create(
    connection_name="string",
)
print(fqdn_connection.data)
```

## Retrieve an FQDN connection

`GET /fqdn_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn_connection = client.fqdn_connections.retrieve(
    "id",
)
print(fqdn_connection.data)
```

## Update an FQDN connection

`PATCH /fqdn_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn_connection = client.fqdn_connections.update(
    id="id",
)
print(fqdn_connection.data)
```

## Delete an FQDN connection

`DELETE /fqdn_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
fqdn_connection = client.fqdn_connections.delete(
    "id",
)
print(fqdn_connection.data)
```

## List Mobile Voice Connections

`GET /v2/mobile_voice_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.mobile_voice_connections.list()
page = page.data[0]
print(page.id)
```

## Create a Mobile Voice Connection

`POST /v2/mobile_voice_connections`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_voice_connection = client.mobile_voice_connections.create()
print(mobile_voice_connection.data)
```

## Retrieve a Mobile Voice Connection

`GET /v2/mobile_voice_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_voice_connection = client.mobile_voice_connections.retrieve(
    "id",
)
print(mobile_voice_connection.data)
```

## Update a Mobile Voice Connection

`PATCH /v2/mobile_voice_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_voice_connection = client.mobile_voice_connections.update(
    id="id",
)
print(mobile_voice_connection.data)
```

## Delete a Mobile Voice Connection

`DELETE /v2/mobile_voice_connections/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
mobile_voice_connection = client.mobile_voice_connections.delete(
    "id",
)
print(mobile_voice_connection.data)
```
