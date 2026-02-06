---
name: telnyx-iot-ruby
description: >-
  Manage IoT SIM cards, eSIMs, data plans, and wireless connectivity. Use when
  building IoT/M2M solutions. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: iot
  language: ruby
---

# Telnyx Iot - Ruby

## Installation

```bash
gem install telnyx
```

## Get all wireless regions

`GET /wireless/regions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.wireless.retrieve_regions(product: "public_ips")

puts(response)
```

## Get all SIM cards

`GET /sim_cards`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_cards.list

puts(page)
```

## Get SIM card

`GET /sim_cards/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card = telnyx.sim_cards.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card)
```

## Update a SIM card

`PATCH /sim_cards/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card = telnyx.sim_cards.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card)
```

## Deletes a SIM card

`DELETE /sim_cards/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card = telnyx.sim_cards.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card)
```

## Get activation code for an eSIM

`GET /sim_cards/{id}/activation_code`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.get_activation_code("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Get SIM card device details

`GET /sim_cards/{id}/device_details`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.get_device_details("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Get SIM card public IP definition

`GET /sim_cards/{id}/public_ip`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.get_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## List wireless connectivity logs

`GET /sim_cards/{id}/wireless_connectivity_logs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_cards.list_wireless_connectivity_logs("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(page)
```

## Request a SIM card disable

`POST /sim_cards/{id}/actions/disable`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.disable("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request a SIM card enable

`POST /sim_cards/{id}/actions/enable`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.enable("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request removing a SIM card public IP

`POST /sim_cards/{id}/actions/remove_public_ip`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.remove_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request setting a SIM card public IP

`POST /sim_cards/{id}/actions/set_public_ip`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.set_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request setting a SIM card to standby

`POST /sim_cards/{id}/actions/set_standby`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.set_standby("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request bulk setting SIM card public IPs.

`POST /sim_cards/actions/bulk_set_public_ips`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.bulk_set_public_ips(sim_card_ids: ["6b14e151-8493-4fa1-8664-1cc4e6d14158"])

puts(response)
```

## Validate SIM cards registration codes

`POST /sim_cards/actions/validate_registration_codes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_cards.actions.validate_registration_codes

puts(response)
```

## List SIM card actions

`GET /sim_card_actions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_cards.actions.list

puts(page)
```

## Get SIM card action details

`GET /sim_card_actions/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

action = telnyx.sim_cards.actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(action)
```

## List bulk SIM card actions

`GET /bulk_sim_card_actions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.bulk_sim_card_actions.list

puts(page)
```

## Get bulk SIM card action details

`GET /bulk_sim_card_actions/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

bulk_sim_card_action = telnyx.bulk_sim_card_actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(bulk_sim_card_action)
```

## Get all SIM card groups

`GET /sim_card_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_card_groups.list

puts(page)
```

## Create a SIM card group

`POST /sim_card_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_group = telnyx.sim_card_groups.create(name: "My Test Group")

puts(sim_card_group)
```

## Get SIM card group

`GET /sim_card_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_group = telnyx.sim_card_groups.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_group)
```

## Update a SIM card group

`PATCH /sim_card_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_group = telnyx.sim_card_groups.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_group)
```

## Delete a SIM card group

`DELETE /sim_card_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_group = telnyx.sim_card_groups.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_group)
```

## Request Private Wireless Gateway removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_private_wireless_gateway`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_card_groups.actions.remove_private_wireless_gateway("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request Wireless Blocklist removal from SIM card group

`POST /sim_card_groups/{id}/actions/remove_wireless_blocklist`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_card_groups.actions.remove_wireless_blocklist("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Request Private Wireless Gateway assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_private_wireless_gateway`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_card_groups.actions.set_private_wireless_gateway(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  private_wireless_gateway_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
)

puts(response)
```

## Request Wireless Blocklist assignment for SIM card group

`POST /sim_card_groups/{id}/actions/set_wireless_blocklist`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_card_groups.actions.set_wireless_blocklist(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  wireless_blocklist_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
)

puts(response)
```

## List SIM card group actions

`GET /sim_card_group_actions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_card_groups.actions.list

puts(page)
```

## Get SIM card group action details

`GET /sim_card_group_actions/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

action = telnyx.sim_card_groups.actions.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(action)
```

## Get all SIM card orders

`GET /sim_card_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_card_orders.list

puts(page)
```

## Create a SIM card order

`POST /sim_card_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_order = telnyx.sim_card_orders.create(address_id: "1293384261075731499", quantity: 23)

puts(sim_card_order)
```

## Get a single SIM card order

`GET /sim_card_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_order = telnyx.sim_card_orders.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_order)
```

## Preview SIM card orders

`POST /sim_card_order_preview`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sim_card_order_preview.preview(address_id: "1293384261075731499", quantity: 21)

puts(response)
```

## List SIM card data usage notifications

`GET /sim_card_data_usage_notifications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.sim_card_data_usage_notifications.list

puts(page)
```

## Create a new SIM card data usage notification

`POST /sim_card_data_usage_notifications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_data_usage_notification = telnyx.sim_card_data_usage_notifications.create(
  sim_card_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  threshold: {}
)

puts(sim_card_data_usage_notification)
```

## Get a single SIM card data usage notification

`GET /sim_card_data_usage_notifications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_data_usage_notification = telnyx.sim_card_data_usage_notifications.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_data_usage_notification)
```

## Updates information for a SIM Card Data Usage Notification

`PATCH /sim_card_data_usage_notifications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_data_usage_notification = telnyx.sim_card_data_usage_notifications.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_data_usage_notification)
```

## Delete SIM card data usage notifications

`DELETE /sim_card_data_usage_notifications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sim_card_data_usage_notification = telnyx.sim_card_data_usage_notifications.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(sim_card_data_usage_notification)
```

## Purchase eSIMs

`POST /actions/purchase/esims`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

purchase = telnyx.actions.purchase.create(amount: 10)

puts(purchase)
```

## Register SIM cards

`POST /actions/register/sim_cards`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

register = telnyx.actions.register.create(registration_codes: ["0000000001", "0000000002", "0000000003"])

puts(register)
```

## List OTA updates

`GET /ota_updates`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.ota_updates.list

puts(page)
```

## Get OTA update

`GET /ota_updates/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

ota_update = telnyx.ota_updates.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(ota_update)
```

## Get all Private Wireless Gateways

`GET /private_wireless_gateways`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.private_wireless_gateways.list

puts(page)
```

## Create a Private Wireless Gateway

`POST /private_wireless_gateways`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

private_wireless_gateway = telnyx.private_wireless_gateways.create(
  name: "My private wireless gateway",
  network_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
)

puts(private_wireless_gateway)
```

## Get a Private Wireless Gateway

`GET /private_wireless_gateways/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

private_wireless_gateway = telnyx.private_wireless_gateways.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(private_wireless_gateway)
```

## Delete a Private Wireless Gateway

`DELETE /private_wireless_gateways/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

private_wireless_gateway = telnyx.private_wireless_gateways.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(private_wireless_gateway)
```

## Get all Wireless Blocklists

`GET /wireless_blocklists`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.wireless_blocklists.list

puts(page)
```

## Create a Wireless Blocklist

`POST /wireless_blocklists`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireless_blocklist = telnyx.wireless_blocklists.create(name: "My Wireless Blocklist", type: :country, values: ["CA", "US"])

puts(wireless_blocklist)
```

## Update a Wireless Blocklist

`PATCH /wireless_blocklists`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireless_blocklist = telnyx.wireless_blocklists.update

puts(wireless_blocklist)
```

## Get a Wireless Blocklist

`GET /wireless_blocklists/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireless_blocklist = telnyx.wireless_blocklists.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireless_blocklist)
```

## Delete a Wireless Blocklist

`DELETE /wireless_blocklists/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireless_blocklist = telnyx.wireless_blocklists.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireless_blocklist)
```

## Get all possible wireless blocklist values

`GET /wireless_blocklist_values`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireless_blocklist_values = telnyx.wireless_blocklist_values.list(type: :country)

puts(wireless_blocklist_values)
```
