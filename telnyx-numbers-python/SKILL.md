---
name: telnyx-numbers-python
description: >-
  Search for available phone numbers by location and features, check coverage,
  and place orders. Use when acquiring new phone numbers. This skill provides
  Python SDK examples.
metadata:
  author: telnyx
  product: numbers
  language: python
---

# Telnyx Numbers - Python

## Installation

```bash
pip install telnyx
```

## Get country coverage

`GET /country_coverage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
country_coverage = client.country_coverage.retrieve()
print(country_coverage.data)
```

## Get coverage for a specific country

`GET /country_coverage/countries/{country_code}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.country_coverage.retrieve_country(
    "US",
)
print(response.data)
```

## Create an inventory coverage request

`GET /inventory_coverage`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inventory_coverages = client.inventory_coverage.list()
print(inventory_coverages.data)
```

## List number reservations

`GET /number_reservations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.number_reservations.list()
page = page.data[0]
print(page.id)
```

## Create a number reservation

`POST /number_reservations`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_reservation = client.number_reservations.create()
print(number_reservation.data)
```

## Retrieve a number reservation

`GET /number_reservations/{number_reservation_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_reservation = client.number_reservations.retrieve(
    "number_reservation_id",
)
print(number_reservation.data)
```

## Extend a number reservation

`POST /number_reservations/{number_reservation_id}/actions/extend`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.number_reservations.actions.extend(
    "number_reservation_id",
)
print(response.data)
```

## List number orders

`GET /number_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.number_orders.list()
page = page.data[0]
print(page.id)
```

## Create a number order

`POST /number_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_order = client.number_orders.create()
print(number_order.data)
```

## Retrieve a number order

`GET /number_orders/{number_order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_order = client.number_orders.retrieve(
    "number_order_id",
)
print(number_order.data)
```

## Update a number order

`PATCH /number_orders/{number_order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_order = client.number_orders.update(
    number_order_id="number_order_id",
)
print(number_order.data)
```

## List number block orders

`GET /number_block_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.number_block_orders.list()
page = page.data[0]
print(page.id)
```

## Create a number block order

`POST /number_block_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_block_order = client.number_block_orders.create(
    range=10,
    starting_number="+19705555000",
)
print(number_block_order.data)
```

## Retrieve a number block order

`GET /number_block_orders/{number_block_order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_block_order = client.number_block_orders.retrieve(
    "number_block_order_id",
)
print(number_block_order.data)
```

## Retrieve a list of phone numbers associated to orders

`GET /number_order_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_order_phone_numbers = client.number_order_phone_numbers.list()
print(number_order_phone_numbers.data)
```

## Update requirement group for a phone number order

`POST /number_order_phone_numbers/{id}/requirement_group`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.number_order_phone_numbers.update_requirement_group(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    requirement_group_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.data)
```

## Retrieve a single phone number within a number order.

`GET /number_order_phone_numbers/{number_order_phone_number_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_order_phone_number = client.number_order_phone_numbers.retrieve(
    "number_order_phone_number_id",
)
print(number_order_phone_number.data)
```

## Update requirements for a single phone number within a number order.

`PATCH /number_order_phone_numbers/{number_order_phone_number_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.number_order_phone_numbers.update_requirements(
    number_order_phone_number_id="number_order_phone_number_id",
)
print(response.data)
```

## List sub number orders

`GET /sub_number_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sub_number_orders = client.sub_number_orders.list()
print(sub_number_orders.data)
```

## Update requirement group for a sub number order

`POST /sub_number_orders/{id}/requirement_group`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sub_number_orders.update_requirement_group(
    id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
    requirement_group_id="a4b201f9-8646-4e54-a7d2-b2e403eeaf8c",
)
print(response.data)
```

## Retrieve a sub number order

`GET /sub_number_orders/{sub_number_order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sub_number_order = client.sub_number_orders.retrieve(
    sub_number_order_id="sub_number_order_id",
)
print(sub_number_order.data)
```

## Update a sub number order's requirements

`PATCH /sub_number_orders/{sub_number_order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sub_number_order = client.sub_number_orders.update(
    sub_number_order_id="sub_number_order_id",
)
print(sub_number_order.data)
```

## Cancel a sub number order

`PATCH /sub_number_orders/{sub_number_order_id}/cancel`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sub_number_orders.cancel(
    "sub_number_order_id",
)
print(response.data)
```

## Create a sub number orders report

`POST /sub_number_orders/report`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sub_number_orders_report = client.sub_number_orders_report.create()
print(sub_number_orders_report.data)
```

## Retrieve a sub number orders report

`GET /sub_number_orders/report/{report_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
sub_number_orders_report = client.sub_number_orders_report.retrieve(
    "12ade33a-21c0-473b-b055-b3c836e1c293",
)
print(sub_number_orders_report.data)
```

## Download a sub number orders report

`GET /sub_number_orders/report/{report_id}/download`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.sub_number_orders_report.download(
    "12ade33a-21c0-473b-b055-b3c836e1c293",
)
print(response)
```

## List Advanced Orders

`GET /advanced_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
advanced_orders = client.advanced_orders.list()
print(advanced_orders.data)
```

## Create Advanced Order

`POST /advanced_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
advanced_order = client.advanced_orders.create()
print(advanced_order.id)
```

## Update Advanced Order

`PATCH /advanced_orders/{advanced-order-id}/requirement_group`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.advanced_orders.update_requirement_group(
    advanced_order_id="182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(response.id)
```

## Get Advanced Order

`GET /advanced_orders/{order_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
advanced_order = client.advanced_orders.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(advanced_order.id)
```

## List inexplicit number orders

`GET /inexplicit_number_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.inexplicit_number_orders.list()
page = page.data[0]
print(page.id)
```

## Create an inexplicit number order

`POST /inexplicit_number_orders`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inexplicit_number_order = client.inexplicit_number_orders.create(
    ordering_groups=[{
        "count_requested": "count_requested",
        "country_iso": "US",
        "phone_number_type": "phone_number_type",
    }],
)
print(inexplicit_number_order.data)
```

## Retrieve an inexplicit number order

`GET /inexplicit_number_orders/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
inexplicit_number_order = client.inexplicit_number_orders.retrieve(
    "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
)
print(inexplicit_number_order.data)
```

## Retrieve all comments

`GET /comments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
comments = client.comments.list()
print(comments.data)
```

## Create a comment

`POST /comments`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
comment = client.comments.create()
print(comment.data)
```

## Retrieve a comment

`GET /comments/{id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
comment = client.comments.retrieve(
    "id",
)
print(comment.data)
```

## Mark a comment as read

`PATCH /comments/{id}/read`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.comments.mark_as_read(
    "id",
)
print(response.data)
```

## List available phone number blocks

`GET /available_phone_number_blocks`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
available_phone_number_blocks = client.available_phone_number_blocks.list()
print(available_phone_number_blocks.data)
```

## List available phone numbers

`GET /available_phone_numbers`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
available_phone_numbers = client.available_phone_numbers.list()
print(available_phone_numbers.data)
```

## Retrieve the features for a list of numbers

`POST /numbers_features`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
numbers_feature = client.numbers_features.create(
    phone_numbers=["string"],
)
print(numbers_feature.data)
```
