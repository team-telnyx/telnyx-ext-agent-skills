---
name: telnyx-account-python
description: >-
  Manage account balance, payments, invoices, webhooks, and view audit logs and
  detail records. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: account
  language: python
---

# Telnyx Account - Python

## Installation

```bash
pip install telnyx
```

## List Audit Logs

`GET /audit_events`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.audit_events.list()
page = page.data[0]
print(page.id)
```

## Get user balance details

`GET /balance`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
balance = client.balance.retrieve()
print(balance.data)
```

## Search detail records

`GET /detail_records`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.detail_records.list()
page = page.data[0]
print(page)
```

## List invoices

`GET /invoices`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.invoices.list()
page = page.data[0]
print(page.file_id)
```

## Get invoice by ID

`GET /invoices/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
invoice = client.invoices.retrieve(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(invoice.data)
```

## List auto recharge preferences

`GET /payments/auto_recharge_prefs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
auto_recharge_prefs = client.payment.auto_recharge_prefs.list()
print(auto_recharge_prefs.data)
```

## Update auto recharge preferences

`PATCH /payments/auto_recharge_prefs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
auto_recharge_pref = client.payment.auto_recharge_prefs.update()
print(auto_recharge_pref.data)
```

## List User Tags

`GET /user_tags`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
user_tags = client.user_tags.list()
print(user_tags.data)
```

## List webhook deliveries

`GET /webhook_deliveries`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.webhook_deliveries.list()
page = page.data[0]
print(page.id)
```

## Find webhook_delivery details by ID

`GET /webhook_deliveries/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
webhook_delivery = client.webhook_deliveries.retrieve(
    "C9C0797E-901D-4349-A33C-C2C8F31A92C2",
)
print(webhook_delivery.data)
```
