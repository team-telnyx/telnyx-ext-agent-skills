---
name: telnyx-iot-python
description: >-
  Manage IoT SIM cards, eSIMs, data plans, and wireless connectivity. Use when
  building IoT/M2M solutions. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: iot
  language: python
---

# Telnyx Iot - Python

## Installation

```bash
pip install telnyx
```

## Get all wireless regions

`GET /wireless/regions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.wireless.retrieve_regions(
    product="public_ips",
)
print(response.data)
```

## Get all SIM cards

`GET /sim_cards`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_cards.list()
page = page.data[0]
print(page.id)
```

## Get SIM card

`GET /sim_cards/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card = client.sim_cards.retrieve(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card.data)
```

## Update a SIM card

`PATCH /sim_cards/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card = client.sim_cards.update(
    sim_card_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card.data)
```

## Deletes a SIM card

`DELETE /sim_cards/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card = client.sim_cards.delete(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card.data)
```

## Get activation code for an eSIM

`GET /sim_cards/{id}/activation_code`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.get_activation_code(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Get SIM card device details

`GET /sim_cards/{id}/device_details`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.get_device_details(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Get SIM card public IP definition

`GET /sim_cards/{id}/public_ip`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.get_public_ip(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## List wireless connectivity logs

`GET /sim_cards/{id}/wireless_connectivity_logs`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_cards.list_wireless_connectivity_logs(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
page = page.data[0]
print(page.id)
```

## Request a SIM card disable

`POST /sim_cards/{id}/actions/disable`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.disable(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request a SIM card enable

`POST /sim_cards/{id}/actions/enable`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.enable(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request removing a SIM card public IP

`POST /sim_cards/{id}/actions/remove_public_ip`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.remove_public_ip(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request setting a SIM card public IP

`POST /sim_cards/{id}/actions/set_public_ip`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.set_public_ip(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request setting a SIM card to standby

`POST /sim_cards/{id}/actions/set_standby`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.set_standby(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request bulk setting SIM card public IPs.

`POST /sim_cards/actions/bulk_set_public_ips`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.bulk_set_public_ips(
    sim_card_ids=["6b14e151-8493-4fa1-8664-1cc4e6d14158"],
)
print(response.data)
```

## Validate SIM cards registration codes

`POST /sim_cards/actions/validate_registration_codes`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_cards.actions.validate_registration_codes()
print(response.data)
```

## List SIM card actions

`GET /sim_card_actions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_cards.actions.list()
page = page.data[0]
print(page.id)
```

## Get SIM card action details

`GET /sim_card_actions/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
action = client.sim_cards.actions.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(action.data)
```

## List bulk SIM card actions

`GET /bulk_sim_card_actions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.bulk_sim_card_actions.list()
page = page.data[0]
print(page.id)
```

## Get bulk SIM card action details

`GET /bulk_sim_card_actions/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
bulk_sim_card_action = client.bulk_sim_card_actions.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(bulk_sim_card_action.data)
```

## Get all SIM card groups

`GET /sim_card_groups`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_card_groups.list()
page = page.data[0]
print(page.id)
```

## Create a SIM card group

`POST /sim_card_groups`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_group = client.sim_card_groups.create(
    name="My Test Group",
)
print(sim_card_group.data)
```

## Get SIM card group

`GET /sim_card_groups/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_group = client.sim_card_groups.retrieve(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_group.data)
```

## Update a SIM card group

`PATCH /sim_card_groups/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_group = client.sim_card_groups.update(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_group.data)
```

## Delete a SIM card group

`DELETE /sim_card_groups/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_group = client.sim_card_groups.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_group.data)
```

## Request Private Wireless Gateway removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_private_wireless_gateway`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_card_groups.actions.remove_private_wireless_gateway(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request Wireless Blocklist removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_wireless_blocklist`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_card_groups.actions.remove_wireless_blocklist(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request Private Wireless Gateway assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_private_wireless_gateway`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_card_groups.actions.set_private_wireless_gateway(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    private_wireless_gateway_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## Request Wireless Blocklist assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_wireless_blocklist`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_card_groups.actions.set_wireless_blocklist(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    wireless_blocklist_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response.data)
```

## List SIM card group actions

`GET /sim_card_group_actions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_card_groups.actions.list()
page = page.data[0]
print(page.id)
```

## Get SIM card group action details

`GET /sim_card_group_actions/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
action = client.sim_card_groups.actions.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(action.data)
```

## Get all SIM card orders

`GET /sim_card_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_card_orders.list()
page = page.data[0]
print(page.id)
```

## Create a SIM card order

`POST /sim_card_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_order = client.sim_card_orders.create(
    address_id="1293384261075731499",
    quantity=23,
)
print(sim_card_order.data)
```

## Get a single SIM card order

`GET /sim_card_orders/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_order = client.sim_card_orders.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_order.data)
```

## Preview SIM card orders

`POST /sim_card_order_preview`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sim_card_order_preview.preview(
    address_id="1293384261075731499",
    quantity=21,
)
print(response.data)
```

## List SIM card data usage notifications

`GET /sim_card_data_usage_notifications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.sim_card_data_usage_notifications.list()
page = page.data[0]
print(page.id)
```

## Create a new SIM card data usage notification

`POST /sim_card_data_usage_notifications`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_data_usage_notification = client.sim_card_data_usage_notifications.create(
    sim_card_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    threshold={},
)
print(sim_card_data_usage_notification.data)
```

## Get a single SIM card data usage notification

`GET /sim_card_data_usage_notifications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_data_usage_notification = client.sim_card_data_usage_notifications.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_data_usage_notification.data)
```

## Updates information for a SIM Card Data Usage Notification

`PATCH /sim_card_data_usage_notifications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_data_usage_notification = client.sim_card_data_usage_notifications.update(
    sim_card_data_usage_notification_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_data_usage_notification.data)
```

## Delete SIM card data usage notifications

`DELETE /sim_card_data_usage_notifications/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sim_card_data_usage_notification = client.sim_card_data_usage_notifications.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(sim_card_data_usage_notification.data)
```

## Purchase eSIMs

`POST /actions/purchase/esims`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
purchase = client.actions.purchase.create(
    amount=10,
)
print(purchase.data)
```

## Register SIM cards

`POST /actions/register/sim_cards`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
register = client.actions.register.create(
    registration_codes=["0000000001", "0000000002", "0000000003"],
)
print(register.data)
```

## List OTA updates

`GET /ota_updates`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.ota_updates.list()
page = page.data[0]
print(page.id)
```

## Get OTA update

`GET /ota_updates/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
ota_update = client.ota_updates.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(ota_update.data)
```

## Get all Private Wireless Gateways

`GET /private_wireless_gateways`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.private_wireless_gateways.list()
page = page.data[0]
print(page.id)
```

## Create a Private Wireless Gateway

`POST /private_wireless_gateways`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
private_wireless_gateway = client.private_wireless_gateways.create(
    name="My private wireless gateway",
    network_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(private_wireless_gateway.data)
```

## Get a Private Wireless Gateway

`GET /private_wireless_gateways/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
private_wireless_gateway = client.private_wireless_gateways.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(private_wireless_gateway.data)
```

## Delete a Private Wireless Gateway

`DELETE /private_wireless_gateways/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
private_wireless_gateway = client.private_wireless_gateways.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(private_wireless_gateway.data)
```

## Get all Wireless Blocklists

`GET /wireless_blocklists`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.wireless_blocklists.list()
page = page.data[0]
print(page.id)
```

## Create a Wireless Blocklist

`POST /wireless_blocklists`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireless_blocklist = client.wireless_blocklists.create(
    name="My Wireless Blocklist",
    type="country",
    values=["CA", "US"],
)
print(wireless_blocklist.data)
```

## Update a Wireless Blocklist

`PATCH /wireless_blocklists`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireless_blocklist = client.wireless_blocklists.update()
print(wireless_blocklist.data)
```

## Get a Wireless Blocklist

`GET /wireless_blocklists/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireless_blocklist = client.wireless_blocklists.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireless_blocklist.data)
```

## Delete a Wireless Blocklist

`DELETE /wireless_blocklists/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireless_blocklist = client.wireless_blocklists.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireless_blocklist.data)
```

## Get all possible wireless blocklist values

`GET /wireless_blocklist_values`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireless_blocklist_values = client.wireless_blocklist_values.list(
    type="country",
)
print(wireless_blocklist_values.data)
```
