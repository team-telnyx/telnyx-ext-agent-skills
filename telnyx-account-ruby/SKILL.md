---
name: telnyx-account-ruby
description: >-
  Manage account balance, payments, invoices, webhooks, and view audit logs and
  detail records. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: account
  language: ruby
---

# Telnyx Account - Ruby

## Installation

```bash
gem install telnyx
```

## List Audit Logs

`GET /audit_events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.audit_events.list

puts(page)
```

## Get user balance details

`GET /balance`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

balance = telnyx.balance.retrieve

puts(balance)
```

## Search detail records

`GET /detail_records`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.detail_records.list

puts(page)
```

## List invoices

`GET /invoices`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.invoices.list

puts(page)
```

## Get invoice by ID

`GET /invoices/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

invoice = telnyx.invoices.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(invoice)
```

## List auto recharge preferences

`GET /payments/auto_recharge_prefs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

auto_recharge_prefs = telnyx.payment.auto_recharge_prefs.list

puts(auto_recharge_prefs)
```

## Update auto recharge preferences

`PATCH /payments/auto_recharge_prefs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

auto_recharge_pref = telnyx.payment.auto_recharge_prefs.update

puts(auto_recharge_pref)
```

## List User Tags

`GET /user_tags`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

user_tags = telnyx.user_tags.list

puts(user_tags)
```

## List webhook deliveries

`GET /webhook_deliveries`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.webhook_deliveries.list

puts(page)
```

## Find webhook_delivery details by ID

`GET /webhook_deliveries/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

webhook_delivery = telnyx.webhook_deliveries.retrieve("C9C0797E-901D-4349-A33C-C2C8F31A92C2")

puts(webhook_delivery)
```
