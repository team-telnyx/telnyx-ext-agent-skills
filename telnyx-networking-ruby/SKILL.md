---
name: telnyx-networking-ruby
description: >-
  Configure private networks, WireGuard VPN gateways, internet gateways, and
  virtual cross connects. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: networking
  language: ruby
---

# Telnyx Networking - Ruby

## Installation

```bash
gem install telnyx
```

## List all Regions

`GET /regions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

regions = telnyx.regions.list

puts(regions)
```

## List all Networks

`GET /networks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.networks.list

puts(page)
```

## Create a Network

`POST /networks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

network = telnyx.networks.create(name: "test network")

puts(network)
```

## Retrieve a Network

`GET /networks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

network = telnyx.networks.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(network)
```

## Update a Network

`PATCH /networks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

network = telnyx.networks.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", name: "test network")

puts(network)
```

## Delete a Network

`DELETE /networks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

network = telnyx.networks.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(network)
```

## Get Default Gateway status.

`GET /networks/{id}/default_gateway`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

default_gateway = telnyx.networks.default_gateway.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(default_gateway)
```

## Create Default Gateway.

`POST /networks/{id}/default_gateway`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

default_gateway = telnyx.networks.default_gateway.create("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(default_gateway)
```

## Delete Default Gateway.

`DELETE /networks/{id}/default_gateway`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

default_gateway = telnyx.networks.default_gateway.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(default_gateway)
```

## List all Interfaces for a Network.

`GET /networks/{id}/network_interfaces`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.networks.list_interfaces("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(page)
```

## List all WireGuard Interfaces

`GET /wireguard_interfaces`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.wireguard_interfaces.list

puts(page)
```

## Create a WireGuard Interface

`POST /wireguard_interfaces`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_interface = telnyx.wireguard_interfaces.create(region_code: "ashburn-va")

puts(wireguard_interface)
```

## Retrieve a WireGuard Interfaces

`GET /wireguard_interfaces/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_interface = telnyx.wireguard_interfaces.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_interface)
```

## Delete a WireGuard Interface

`DELETE /wireguard_interfaces/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_interface = telnyx.wireguard_interfaces.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_interface)
```

## List all WireGuard Peers

`GET /wireguard_peers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.wireguard_peers.list

puts(page)
```

## Create a WireGuard Peer

`POST /wireguard_peers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_peer = telnyx.wireguard_peers.create(wireguard_interface_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_peer)
```

## Retrieve the WireGuard Peer

`GET /wireguard_peers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_peer = telnyx.wireguard_peers.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_peer)
```

## Update the WireGuard Peer

`PATCH /wireguard_peers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_peer = telnyx.wireguard_peers.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_peer)
```

## Delete the WireGuard Peer

`DELETE /wireguard_peers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

wireguard_peer = telnyx.wireguard_peers.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(wireguard_peer)
```

## Retrieve Wireguard config template for Peer

`GET /wireguard_peers/{id}/config`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.wireguard_peers.retrieve_config("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
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

## List all Public Internet Gateways

`GET /public_internet_gateways`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.public_internet_gateways.list

puts(page)
```

## Create a Public Internet Gateway

`POST /public_internet_gateways`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

public_internet_gateway = telnyx.public_internet_gateways.create

puts(public_internet_gateway)
```

## Retrieve a Public Internet Gateway

`GET /public_internet_gateways/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

public_internet_gateway = telnyx.public_internet_gateways.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(public_internet_gateway)
```

## Delete a Public Internet Gateway

`DELETE /public_internet_gateways/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

public_internet_gateway = telnyx.public_internet_gateways.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(public_internet_gateway)
```

## List all Virtual Cross Connects

`GET /virtual_cross_connects`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.virtual_cross_connects.list

puts(page)
```

## Create a Virtual Cross Connect

`POST /virtual_cross_connects`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

virtual_cross_connect = telnyx.virtual_cross_connects.create(region_code: "ashburn-va")

puts(virtual_cross_connect)
```

## Retrieve a Virtual Cross Connect

`GET /virtual_cross_connects/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

virtual_cross_connect = telnyx.virtual_cross_connects.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(virtual_cross_connect)
```

## Update the Virtual Cross Connect

`PATCH /virtual_cross_connects/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

virtual_cross_connect = telnyx.virtual_cross_connects.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(virtual_cross_connect)
```

## Delete a Virtual Cross Connect

`DELETE /virtual_cross_connects/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

virtual_cross_connect = telnyx.virtual_cross_connects.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(virtual_cross_connect)
```

## List Virtual Cross Connect Cloud Coverage

`GET /virtual_cross_connects/coverage`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.virtual_cross_connects_coverage.list

puts(page)
```

## List all Global IPs

`GET /global_ips`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.global_ips.list

puts(page)
```

## Create a Global IP

`POST /global_ips`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip = telnyx.global_ips.create

puts(global_ip)
```

## Retrieve a Global IP

`GET /global_ips/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip = telnyx.global_ips.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip)
```

## Delete a Global IP

`DELETE /global_ips/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip = telnyx.global_ips.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip)
```

## List all Global IP Allowed Ports

`GET /global_ip_allowed_ports`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_allowed_ports = telnyx.global_ip_allowed_ports.list

puts(global_ip_allowed_ports)
```

## Global IP Assignment Health Check Metrics

`GET /global_ip_assignment_health`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignment_health = telnyx.global_ip_assignment_health.retrieve

puts(global_ip_assignment_health)
```

## List all Global IP assignments

`GET /global_ip_assignments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.global_ip_assignments.list

puts(page)
```

## Create a Global IP assignment

`POST /global_ip_assignments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignment = telnyx.global_ip_assignments.create

puts(global_ip_assignment)
```

## Retrieve a Global IP

`GET /global_ip_assignments/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignment = telnyx.global_ip_assignments.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip_assignment)
```

## Update a Global IP assignment

`PATCH /global_ip_assignments/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignment = telnyx.global_ip_assignments.update(
  "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
  global_ip_assignment_update_request: {}
)

puts(global_ip_assignment)
```

## Delete a Global IP assignment

`DELETE /global_ip_assignments/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignment = telnyx.global_ip_assignments.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip_assignment)
```

## Global IP Assignment Usage Metrics

`GET /global_ip_assignments/usage`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_assignments_usage = telnyx.global_ip_assignments_usage.retrieve

puts(global_ip_assignments_usage)
```

## List all Global IP Health check types

`GET /global_ip_health_check_types`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_health_check_types = telnyx.global_ip_health_check_types.list

puts(global_ip_health_check_types)
```

## List all Global IP health checks

`GET /global_ip_health_checks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.global_ip_health_checks.list

puts(page)
```

## Create a Global IP health check

`POST /global_ip_health_checks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_health_check = telnyx.global_ip_health_checks.create

puts(global_ip_health_check)
```

## Retrieve a Global IP health check

`GET /global_ip_health_checks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_health_check = telnyx.global_ip_health_checks.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip_health_check)
```

## Delete a Global IP health check

`DELETE /global_ip_health_checks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_health_check = telnyx.global_ip_health_checks.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(global_ip_health_check)
```

## Global IP Latency Metrics

`GET /global_ip_latency`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_latency = telnyx.global_ip_latency.retrieve

puts(global_ip_latency)
```

## List all Global IP Protocols

`GET /global_ip_protocols`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_protocols = telnyx.global_ip_protocols.list

puts(global_ip_protocols)
```

## Global IP Usage Metrics

`GET /global_ip_usage`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

global_ip_usage = telnyx.global_ip_usage.retrieve

puts(global_ip_usage)
```
