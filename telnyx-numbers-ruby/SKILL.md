---
name: telnyx-numbers-ruby
description: >-
  Search for available phone numbers by location and features, check coverage,
  and place orders. Use when acquiring new phone numbers. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: numbers
  language: ruby
---

# Telnyx Numbers - Ruby

## Installation

```bash
gem install telnyx
```

## Get country coverage

`GET /country_coverage`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

country_coverage = telnyx.country_coverage.retrieve

puts(country_coverage)
```

## Get coverage for a specific country

`GET /country_coverage/countries/{country_code}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.country_coverage.retrieve_country("US")

puts(response)
```

## Create an inventory coverage request

`GET /inventory_coverage`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inventory_coverages = telnyx.inventory_coverage.list

puts(inventory_coverages)
```

## List number reservations

`GET /number_reservations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.number_reservations.list

puts(page)
```

## Create a number reservation

`POST /number_reservations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_reservation = telnyx.number_reservations.create

puts(number_reservation)
```

## Retrieve a number reservation

`GET /number_reservations/{number_reservation_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_reservation = telnyx.number_reservations.retrieve("number_reservation_id")

puts(number_reservation)
```

## Extend a number reservation

`POST /number_reservations/{number_reservation_id}/actions/extend`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.number_reservations.actions.extend_("number_reservation_id")

puts(response)
```

## List number orders

`GET /number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.number_orders.list

puts(page)
```

## Create a number order

`POST /number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_order = telnyx.number_orders.create

puts(number_order)
```

## Retrieve a number order

`GET /number_orders/{number_order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_order = telnyx.number_orders.retrieve("number_order_id")

puts(number_order)
```

## Update a number order

`PATCH /number_orders/{number_order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_order = telnyx.number_orders.update("number_order_id")

puts(number_order)
```

## List number block orders

`GET /number_block_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.number_block_orders.list

puts(page)
```

## Create a number block order

`POST /number_block_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_block_order = telnyx.number_block_orders.create(range: 10, starting_number: "+19705555000")

puts(number_block_order)
```

## Retrieve a number block order

`GET /number_block_orders/{number_block_order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_block_order = telnyx.number_block_orders.retrieve("number_block_order_id")

puts(number_block_order)
```

## Retrieve a list of phone numbers associated to orders

`GET /number_order_phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_order_phone_numbers = telnyx.number_order_phone_numbers.list

puts(number_order_phone_numbers)
```

## Update requirement group for a phone number order

`POST /number_order_phone_numbers/{id}/requirement_group`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.number_order_phone_numbers.update_requirement_group(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  requirement_group_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(response)
```

## Retrieve a single phone number within a number order.

`GET /number_order_phone_numbers/{number_order_phone_number_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

number_order_phone_number = telnyx.number_order_phone_numbers.retrieve("number_order_phone_number_id")

puts(number_order_phone_number)
```

## Update requirements for a single phone number within a number order.

`PATCH /number_order_phone_numbers/{number_order_phone_number_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.number_order_phone_numbers.update_requirements("number_order_phone_number_id")

puts(response)
```

## List sub number orders

`GET /sub_number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sub_number_orders = telnyx.sub_number_orders.list

puts(sub_number_orders)
```

## Update requirement group for a sub number order

`POST /sub_number_orders/{id}/requirement_group`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sub_number_orders.update_requirement_group(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  requirement_group_id: "a4b201f9-8646-4e54-a7d2-b2e403eeaf8c"
)

puts(response)
```

## Retrieve a sub number order

`GET /sub_number_orders/{sub_number_order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sub_number_order = telnyx.sub_number_orders.retrieve("sub_number_order_id")

puts(sub_number_order)
```

## Update a sub number order's requirements

`PATCH /sub_number_orders/{sub_number_order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sub_number_order = telnyx.sub_number_orders.update("sub_number_order_id")

puts(sub_number_order)
```

## Cancel a sub number order

`PATCH /sub_number_orders/{sub_number_order_id}/cancel`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sub_number_orders.cancel("sub_number_order_id")

puts(response)
```

## Create a sub number orders report

`POST /sub_number_orders/report`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sub_number_orders_report = telnyx.sub_number_orders_report.create

puts(sub_number_orders_report)
```

## Retrieve a sub number orders report

`GET /sub_number_orders/report/{report_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

sub_number_orders_report = telnyx.sub_number_orders_report.retrieve("12ade33a-21c0-473b-b055-b3c836e1c293")

puts(sub_number_orders_report)
```

## Download a sub number orders report

`GET /sub_number_orders/report/{report_id}/download`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.sub_number_orders_report.download("12ade33a-21c0-473b-b055-b3c836e1c293")

puts(response)
```

## List Advanced Orders

`GET /advanced_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

advanced_orders = telnyx.advanced_orders.list

puts(advanced_orders)
```

## Create Advanced Order

`POST /advanced_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

advanced_order = telnyx.advanced_orders.create

puts(advanced_order)
```

## Update Advanced Order

`PATCH /advanced_orders/{advanced-order-id}/requirement_group`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.advanced_orders.update_requirement_group("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Get Advanced Order

`GET /advanced_orders/{order_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

advanced_order = telnyx.advanced_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(advanced_order)
```

## List inexplicit number orders

`GET /inexplicit_number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.inexplicit_number_orders.list

puts(page)
```

## Create an inexplicit number order

`POST /inexplicit_number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inexplicit_number_order = telnyx.inexplicit_number_orders.create(
  ordering_groups: [{count_requested: "count_requested", country_iso: :US, phone_number_type: "phone_number_type"}]
)

puts(inexplicit_number_order)
```

## Retrieve an inexplicit number order

`GET /inexplicit_number_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

inexplicit_number_order = telnyx.inexplicit_number_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(inexplicit_number_order)
```

## Retrieve all comments

`GET /comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comments = telnyx.comments.list

puts(comments)
```

## Create a comment

`POST /comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comment = telnyx.comments.create

puts(comment)
```

## Retrieve a comment

`GET /comments/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comment = telnyx.comments.retrieve("id")

puts(comment)
```

## Mark a comment as read

`PATCH /comments/{id}/read`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.comments.mark_as_read("id")

puts(response)
```

## List available phone number blocks

`GET /available_phone_number_blocks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

available_phone_number_blocks = telnyx.available_phone_number_blocks.list

puts(available_phone_number_blocks)
```

## List available phone numbers

`GET /available_phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

available_phone_numbers = telnyx.available_phone_numbers.list

puts(available_phone_numbers)
```

## Retrieve the features for a list of numbers

`POST /numbers_features`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

numbers_feature = telnyx.numbers_features.create(phone_numbers: ["string"])

puts(numbers_feature)
```
