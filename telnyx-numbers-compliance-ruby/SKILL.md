---
name: telnyx-numbers-compliance-ruby
description: >-
  Manage regulatory requirements, number bundles, supporting documents, and
  verified numbers for compliance. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: numbers-compliance
  language: ruby
---

# Telnyx Numbers Compliance - Ruby

## Installation

```bash
gem install telnyx
```

## Retrieve Bundles

`GET /bundle_pricing/billing_bundles`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.bundle_pricing.billing_bundles.list

puts(page)
```

## Get Bundle By Id

`GET /bundle_pricing/billing_bundles/{bundle_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

billing_bundle = telnyx.bundle_pricing.billing_bundles.retrieve("8661948c-a386-4385-837f-af00f40f111a")

puts(billing_bundle)
```

## Get User Bundles

`GET /bundle_pricing/user_bundles`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.bundle_pricing.user_bundles.list

puts(page)
```

## Create User Bundles

`POST /bundle_pricing/user_bundles/bulk`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

user_bundle = telnyx.bundle_pricing.user_bundles.create

puts(user_bundle)
```

## Get Unused User Bundles

`GET /bundle_pricing/user_bundles/unused`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.bundle_pricing.user_bundles.list_unused

puts(response)
```

## Get User Bundle by Id

`GET /bundle_pricing/user_bundles/{user_bundle_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

user_bundle = telnyx.bundle_pricing.user_bundles.retrieve("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

puts(user_bundle)
```

## Deactivate User Bundle

`DELETE /bundle_pricing/user_bundles/{user_bundle_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.bundle_pricing.user_bundles.deactivate("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

puts(response)
```

## Get User Bundle Resources

`GET /bundle_pricing/user_bundles/{user_bundle_id}/resources`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.bundle_pricing.user_bundles.list_resources("ca1d2263-d1f1-43ac-ba53-248e7a4bb26a")

puts(response)
```

## List all document links

`GET /document_links`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.document_links.list

puts(page)
```

## List all documents

`GET /documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.documents.list

puts(page)
```

## Upload a document

`POST /documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.documents.upload_json(document: {})

puts(response)
```

## Retrieve a document

`GET /documents/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

document = telnyx.documents.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(document)
```

## Update a document

`PATCH /documents/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

document = telnyx.documents.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(document)
```

## Delete a document

`DELETE /documents/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

document = telnyx.documents.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(document)
```

## Download a document

`GET /documents/{id}/download`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.documents.download("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

puts(response)
```

## Generate a temporary download link for a document

`GET /documents/{id}/download_link`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.documents.generate_download_link("550e8400-e29b-41d4-a716-446655440000")

puts(response)
```

## List all requirements

`GET /requirements`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.requirements.list

puts(page)
```

## Retrieve a document requirement

`GET /requirements/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement = telnyx.requirements.retrieve("a9dad8d5-fdbd-49d7-aa23-39bb08a5ebaa")

puts(requirement)
```

## List all requirement types

`GET /requirement_types`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_types = telnyx.requirement_types.list

puts(requirement_types)
```

## Retrieve a requirement types

`GET /requirement_types/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_type = telnyx.requirement_types.retrieve("a38c217a-8019-48f8-bff6-0fdd9939075b")

puts(requirement_type)
```

## Retrieve regulatory requirements

`GET /regulatory_requirements`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

regulatory_requirement = telnyx.regulatory_requirements.retrieve

puts(regulatory_requirement)
```

## List requirement groups

`GET /requirement_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_groups = telnyx.requirement_groups.list

puts(requirement_groups)
```

## Create a new requirement group

`POST /requirement_groups`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_group = telnyx.requirement_groups.create(action: :ordering, country_code: "US", phone_number_type: :local)

puts(requirement_group)
```

## Get a single requirement group by ID

`GET /requirement_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_group = telnyx.requirement_groups.retrieve("id")

puts(requirement_group)
```

## Update requirement values in requirement group

`PATCH /requirement_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_group = telnyx.requirement_groups.update("id")

puts(requirement_group)
```

## Delete a requirement group by ID

`DELETE /requirement_groups/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_group = telnyx.requirement_groups.delete("id")

puts(requirement_group)
```

## Submit a Requirement Group for Approval

`POST /requirement_groups/{id}/submit_for_approval`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

requirement_group = telnyx.requirement_groups.submit_for_approval("id")

puts(requirement_group)
```

## List all Verified Numbers

`GET /verified_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.verified_numbers.list

puts(page)
```

## Request phone number verification

`POST /verified_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verified_number = telnyx.verified_numbers.create(phone_number: "+15551234567", verification_method: :sms)

puts(verified_number)
```

## Retrieve a verified number

`GET /verified_numbers/{phone_number}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verified_number_data_wrapper = telnyx.verified_numbers.retrieve("+15551234567")

puts(verified_number_data_wrapper)
```

## Delete a verified number

`DELETE /verified_numbers/{phone_number}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verified_number_data_wrapper = telnyx.verified_numbers.delete("+15551234567")

puts(verified_number_data_wrapper)
```

## Submit verification code

`POST /verified_numbers/{phone_number}/actions/verify`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verified_number_data_wrapper = telnyx.verified_numbers.actions.submit_verification_code("+15551234567", verification_code: "123456")

puts(verified_number_data_wrapper)
```
