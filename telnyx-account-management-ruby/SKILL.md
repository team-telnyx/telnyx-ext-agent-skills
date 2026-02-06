---
name: telnyx-account-management-ruby
description: >-
  Manage sub-accounts for reseller and enterprise scenarios. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: account-management
  language: ruby
---

# Telnyx Account Management - Ruby

## Installation

```bash
gem install telnyx
```

## Lists accounts managed by the current user.

`GET /managed_accounts`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.managed_accounts.list

puts(page)
```

## Create a new managed account.

`POST /managed_accounts`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

managed_account = telnyx.managed_accounts.create(business_name: "Larry's Cat Food Inc")

puts(managed_account)
```

## Retrieve a managed account

`GET /managed_accounts/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

managed_account = telnyx.managed_accounts.retrieve("id")

puts(managed_account)
```

## Update a managed account

`PATCH /managed_accounts/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

managed_account = telnyx.managed_accounts.update("id")

puts(managed_account)
```

## Disables a managed account

`POST /managed_accounts/{id}/actions/disable`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.managed_accounts.actions.disable("id")

puts(response)
```

## Enables a managed account

`POST /managed_accounts/{id}/actions/enable`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.managed_accounts.actions.enable("id")

puts(response)
```

## Update the amount of allocatable global outbound channels allocated to a specific managed account.

`PATCH /managed_accounts/{id}/update_global_channel_limit`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.managed_accounts.update_global_channel_limit("id")

puts(response)
```

## Display information about allocatable global outbound channels for the current user.

`GET /managed_accounts/allocatable_global_outbound_channels`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.managed_accounts.get_allocatable_global_outbound_channels

puts(response)
```
