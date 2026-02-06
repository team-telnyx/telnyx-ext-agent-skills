---
name: telnyx-networking-python
description: >-
  Configure private networks, WireGuard VPN gateways, internet gateways, and
  virtual cross connects. This skill provides Python SDK examples.
metadata:
  author: telnyx
  product: networking
  language: python
---

# Telnyx Networking - Python

## Installation

```bash
pip install telnyx
```

## List all Regions

`GET /regions`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
regions = client.regions.list()
print(regions.data)
```

## List all Networks

`GET /networks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.networks.list()
page = page.data[0]
print(page)
```

## Create a Network

`POST /networks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
network = client.networks.create(
    name="test network",
)
print(network.data)
```

## Retrieve a Network

`GET /networks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
network = client.networks.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(network.data)
```

## Update a Network

`PATCH /networks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
network = client.networks.update(
    network_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    name="test network",
)
print(network.data)
```

## Delete a Network

`DELETE /networks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
network = client.networks.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(network.data)
```

## Get Default Gateway status.

`GET /networks/{id}/default_gateway`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
default_gateway = client.networks.default_gateway.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(default_gateway.data)
```

## Create Default Gateway.

`POST /networks/{id}/default_gateway`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
default_gateway = client.networks.default_gateway.create(
    network_identifier="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(default_gateway.data)
```

## Delete Default Gateway.

`DELETE /networks/{id}/default_gateway`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
default_gateway = client.networks.default_gateway.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(default_gateway.data)
```

## List all Interfaces for a Network.

`GET /networks/{id}/network_interfaces`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.networks.list_interfaces(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
page = page.data[0]
print(page)
```

## List all WireGuard Interfaces

`GET /wireguard_interfaces`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.wireguard_interfaces.list()
page = page.data[0]
print(page)
```

## Create a WireGuard Interface

`POST /wireguard_interfaces`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_interface = client.wireguard_interfaces.create(
    region_code="ashburn-va",
)
print(wireguard_interface.data)
```

## Retrieve a WireGuard Interfaces

`GET /wireguard_interfaces/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_interface = client.wireguard_interfaces.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_interface.data)
```

## Delete a WireGuard Interface

`DELETE /wireguard_interfaces/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_interface = client.wireguard_interfaces.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_interface.data)
```

## List all WireGuard Peers

`GET /wireguard_peers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.wireguard_peers.list()
page = page.data[0]
print(page)
```

## Create a WireGuard Peer

`POST /wireguard_peers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_peer = client.wireguard_peers.create(
    wireguard_interface_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_peer.data)
```

## Retrieve the WireGuard Peer

`GET /wireguard_peers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_peer = client.wireguard_peers.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_peer.data)
```

## Update the WireGuard Peer

`PATCH /wireguard_peers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_peer = client.wireguard_peers.update(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_peer.data)
```

## Delete the WireGuard Peer

`DELETE /wireguard_peers/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
wireguard_peer = client.wireguard_peers.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(wireguard_peer.data)
```

## Retrieve Wireguard config template for Peer

`GET /wireguard_peers/{id}/config`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.wireguard_peers.retrieve_config(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(response)
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

## List all Public Internet Gateways

`GET /public_internet_gateways`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.public_internet_gateways.list()
page = page.data[0]
print(page)
```

## Create a Public Internet Gateway

`POST /public_internet_gateways`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
public_internet_gateway = client.public_internet_gateways.create()
print(public_internet_gateway.data)
```

## Retrieve a Public Internet Gateway

`GET /public_internet_gateways/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
public_internet_gateway = client.public_internet_gateways.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(public_internet_gateway.data)
```

## Delete a Public Internet Gateway

`DELETE /public_internet_gateways/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
public_internet_gateway = client.public_internet_gateways.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(public_internet_gateway.data)
```

## List all Virtual Cross Connects

`GET /virtual_cross_connects`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.virtual_cross_connects.list()
page = page.data[0]
print(page)
```

## Create a Virtual Cross Connect

`POST /virtual_cross_connects`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
virtual_cross_connect = client.virtual_cross_connects.create(
    region_code="ashburn-va",
)
print(virtual_cross_connect.data)
```

## Retrieve a Virtual Cross Connect

`GET /virtual_cross_connects/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
virtual_cross_connect = client.virtual_cross_connects.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(virtual_cross_connect.data)
```

## Update the Virtual Cross Connect

`PATCH /virtual_cross_connects/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
virtual_cross_connect = client.virtual_cross_connects.update(
    id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(virtual_cross_connect.data)
```

## Delete a Virtual Cross Connect

`DELETE /virtual_cross_connects/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
virtual_cross_connect = client.virtual_cross_connects.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(virtual_cross_connect.data)
```

## List Virtual Cross Connect Cloud Coverage

`GET /virtual_cross_connects/coverage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.virtual_cross_connects_coverage.list()
page = page.data[0]
print(page.available_bandwidth)
```

## List all Global IPs

`GET /global_ips`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.global_ips.list()
page = page.data[0]
print(page)
```

## Create a Global IP

`POST /global_ips`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip = client.global_ips.create()
print(global_ip.data)
```

## Retrieve a Global IP

`GET /global_ips/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip = client.global_ips.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip.data)
```

## Delete a Global IP

`DELETE /global_ips/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip = client.global_ips.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip.data)
```

## List all Global IP Allowed Ports

`GET /global_ip_allowed_ports`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_allowed_ports = client.global_ip_allowed_ports.list()
print(global_ip_allowed_ports.data)
```

## Global IP Assignment Health Check Metrics

`GET /global_ip_assignment_health`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignment_health = client.global_ip_assignment_health.retrieve()
print(global_ip_assignment_health.data)
```

## List all Global IP assignments

`GET /global_ip_assignments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.global_ip_assignments.list()
page = page.data[0]
print(page.id)
```

## Create a Global IP assignment

`POST /global_ip_assignments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignment = client.global_ip_assignments.create()
print(global_ip_assignment.data)
```

## Retrieve a Global IP

`GET /global_ip_assignments/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignment = client.global_ip_assignments.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip_assignment.data)
```

## Update a Global IP assignment

`PATCH /global_ip_assignments/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignment = client.global_ip_assignments.update(
    global_ip_assignment_id="6a09cdc3-8948-47f0-aa62-74ac943d6c58",
    global_ip_assignment_update_request={},
)
print(global_ip_assignment.data)
```

## Delete a Global IP assignment

`DELETE /global_ip_assignments/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignment = client.global_ip_assignments.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip_assignment.data)
```

## Global IP Assignment Usage Metrics

`GET /global_ip_assignments/usage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_assignments_usage = client.global_ip_assignments_usage.retrieve()
print(global_ip_assignments_usage.data)
```

## List all Global IP Health check types

`GET /global_ip_health_check_types`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_health_check_types = client.global_ip_health_check_types.list()
print(global_ip_health_check_types.data)
```

## List all Global IP health checks

`GET /global_ip_health_checks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.global_ip_health_checks.list()
page = page.data[0]
print(page)
```

## Create a Global IP health check

`POST /global_ip_health_checks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_health_check = client.global_ip_health_checks.create()
print(global_ip_health_check.data)
```

## Retrieve a Global IP health check

`GET /global_ip_health_checks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_health_check = client.global_ip_health_checks.retrieve(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip_health_check.data)
```

## Delete a Global IP health check

`DELETE /global_ip_health_checks/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_health_check = client.global_ip_health_checks.delete(
    "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
)
print(global_ip_health_check.data)
```

## Global IP Latency Metrics

`GET /global_ip_latency`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_latency = client.global_ip_latency.retrieve()
print(global_ip_latency.data)
```

## List all Global IP Protocols

`GET /global_ip_protocols`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_protocols = client.global_ip_protocols.list()
print(global_ip_protocols.data)
```

## Global IP Usage Metrics

`GET /global_ip_usage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
global_ip_usage = client.global_ip_usage.retrieve()
print(global_ip_usage.data)
```
