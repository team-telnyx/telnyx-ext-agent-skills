---
name: telnyx-account-management-python
description: >-
  Manage sub-accounts for reseller and enterprise scenarios. This skill provides
  Python SDK examples.
metadata:
  author: telnyx
  product: account-management
  language: python
---

# Telnyx Account Management - Python

## Installation

```bash
pip install telnyx
```

## Lists accounts managed by the current user.

`GET /managed_accounts`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.managed_accounts.list()
page = page.data[0]
print(page.id)
```

## Create a new managed account.

`POST /managed_accounts`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
managed_account = client.managed_accounts.create(
    business_name="Larry's Cat Food Inc",
)
print(managed_account.data)
```

## Retrieve a managed account

`GET /managed_accounts/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
managed_account = client.managed_accounts.retrieve(
    "id",
)
print(managed_account.data)
```

## Update a managed account

`PATCH /managed_accounts/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
managed_account = client.managed_accounts.update(
    id="id",
)
print(managed_account.data)
```

## Disables a managed account

`POST /managed_accounts/{id}/actions/disable`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.managed_accounts.actions.disable(
    "id",
)
print(response.data)
```

## Enables a managed account

`POST /managed_accounts/{id}/actions/enable`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.managed_accounts.actions.enable(
    id="id",
)
print(response.data)
```

## Update the amount of allocatable global outbound channels allocated to a specific managed account.

`PATCH /managed_accounts/{id}/update_global_channel_limit`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.managed_accounts.update_global_channel_limit(
    id="id",
)
print(response.data)
```

## Display information about allocatable global outbound channels for the current user.

`GET /managed_accounts/allocatable_global_outbound_channels`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.managed_accounts.get_allocatable_global_outbound_channels()
print(response.data)
```
