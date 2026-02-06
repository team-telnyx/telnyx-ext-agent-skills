---
name: telnyx-webrtc-python
description: >-
  Manage WebRTC credentials and mobile push notification settings. Use when
  building browser-based or mobile softphone applications. This skill provides
  Python SDK examples.
metadata:
  author: telnyx
  product: webrtc
  language: python
---

# Telnyx Webrtc - Python

## Installation

```bash
pip install telnyx
```

## List mobile push credentials

`GET /mobile_push_credentials`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.mobile_push_credentials.list()
page = page.data[0]
print(page.id)
```

## Creates a new mobile push credential

`POST /mobile_push_credentials`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
push_credential_response = client.mobile_push_credentials.create(
    create_mobile_push_credential_request={
        "alias": "LucyIosCredential",
        "certificate": "-----BEGIN CERTIFICATE----- MIIGVDCCBTKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END CERTIFICATE-----",
        "private_key": "-----BEGIN RSA PRIVATE KEY----- MIIEpQIBAAKCAQEAsNlRJVZn9ZvXcECQm65czs... -----END RSA PRIVATE KEY-----",
        "type": "ios",
    },
)
print(push_credential_response.data)
```

## Retrieves a mobile push credential

`GET /mobile_push_credentials/{push_credential_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
push_credential_response = client.mobile_push_credentials.retrieve(
    "0ccc7b76-4df3-4bca-a05a-3da1ecc389f0",
)
print(push_credential_response.data)
```

## Deletes a mobile push credential

`DELETE /mobile_push_credentials/{push_credential_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
client.mobile_push_credentials.delete(
    "0ccc7b76-4df3-4bca-a05a-3da1ecc389f0",
)
```

## List all credentials

`GET /telephony_credentials`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.telephony_credentials.list()
page = page.data[0]
print(page.id)
```

## Create a credential

`POST /telephony_credentials`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telephony_credential = client.telephony_credentials.create(
    connection_id="1234567890",
)
print(telephony_credential.data)
```

## Get a credential

`GET /telephony_credentials/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telephony_credential = client.telephony_credentials.retrieve(
    "id",
)
print(telephony_credential.data)
```

## Update a credential

`PATCH /telephony_credentials/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telephony_credential = client.telephony_credentials.update(
    id="id",
)
print(telephony_credential.data)
```

## Delete a credential

`DELETE /telephony_credentials/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
telephony_credential = client.telephony_credentials.delete(
    "id",
)
print(telephony_credential.data)
```

## Create an Access Token.

`POST /telephony_credentials/{id}/token`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.telephony_credentials.create_token(
    "id",
)
print(response)
```
