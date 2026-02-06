---
name: telnyx-porting-in-ruby
description: >-
  Port phone numbers into Telnyx. Check portability, create port orders, upload
  LOA documents, and track porting status. This skill provides Ruby SDK
  examples.
metadata:
  author: telnyx
  product: porting-in
  language: ruby
---

# Telnyx Porting In - Ruby

## Installation

```bash
gem install telnyx
```

## List all porting events

`GET /porting/events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting.events.list

puts(page)
```

## Show a porting event

`GET /porting/events/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

event = telnyx.porting.events.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(event)
```

## Republish a porting event

`POST /porting/events/{id}/republish`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.porting.events.republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Preview the LOA configuration parameters

`POST /porting/loa_configuration_preview`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting.loa_configurations.preview_0(
  address: {city: "Austin", country_code: "US", state: "TX", street_address: "600 Congress Avenue", zip_code: "78701"},
  company_name: "Telnyx",
  contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
  logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
  name: "My LOA Configuration"
)

puts(response)
```

## List LOA configurations

`GET /porting/loa_configurations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting.loa_configurations.list

puts(page)
```

## Create a LOA configuration

`POST /porting/loa_configurations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

loa_configuration = telnyx.porting.loa_configurations.create(
  address: {city: "Austin", country_code: "US", state: "TX", street_address: "600 Congress Avenue", zip_code: "78701"},
  company_name: "Telnyx",
  contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
  logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
  name: "My LOA Configuration"
)

puts(loa_configuration)
```

## Retrieve a LOA configuration

`GET /porting/loa_configurations/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

loa_configuration = telnyx.porting.loa_configurations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(loa_configuration)
```

## Update a LOA configuration

`PATCH /porting/loa_configurations/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

loa_configuration = telnyx.porting.loa_configurations.update(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  address: {city: "Austin", country_code: "US", state: "TX", street_address: "600 Congress Avenue", zip_code: "78701"},
  company_name: "Telnyx",
  contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
  logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
  name: "My LOA Configuration"
)

puts(loa_configuration)
```

## Delete a LOA configuration

`DELETE /porting/loa_configurations/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.porting.loa_configurations.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Preview a LOA configuration

`GET /porting/loa_configurations/{id}/preview`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting.loa_configurations.preview_1("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List all porting orders

`GET /porting_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.list

puts(page)
```

## Create a porting order

`POST /porting_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

porting_order = telnyx.porting_orders.create(phone_numbers: ["+13035550000", "+13035550001", "+13035550002"])

puts(porting_order)
```

## Retrieve a porting order

`GET /porting_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

porting_order = telnyx.porting_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(porting_order)
```

## Edit a porting order

`PATCH /porting_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

porting_order = telnyx.porting_orders.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(porting_order)
```

## Delete a porting order

`DELETE /porting_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.porting_orders.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Activate every number in a porting order asynchronously.

`POST /porting_orders/{id}/actions/activate`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.actions.activate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Cancel a porting order

`POST /porting_orders/{id}/actions/cancel`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.actions.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Submit a porting order.

`POST /porting_orders/{id}/actions/confirm`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.actions.confirm("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Share a porting order

`POST /porting_orders/{id}/actions/share`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.actions.share("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List all porting activation jobs

`GET /porting_orders/{id}/activation_jobs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.activation_jobs.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Retrieve a porting activation job

`GET /porting_orders/{id}/activation_jobs/{activationJobId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

activation_job = telnyx.porting_orders.activation_jobs.retrieve(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(activation_job)
```

## Update a porting activation job

`PATCH /porting_orders/{id}/activation_jobs/{activationJobId}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

activation_job = telnyx.porting_orders.activation_jobs.update(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(activation_job)
```

## List additional documents

`GET /porting_orders/{id}/additional_documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.additional_documents.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Create a list of additional documents

`POST /porting_orders/{id}/additional_documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

additional_document = telnyx.porting_orders.additional_documents.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(additional_document)
```

## Delete an additional document

`DELETE /porting_orders/{id}/additional_documents/{additional_document_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.porting_orders.additional_documents.delete(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(result)
```

## List allowed FOC dates

`GET /porting_orders/{id}/allowed_foc_windows`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.retrieve_allowed_foc_windows("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List all comments of a porting order

`GET /porting_orders/{id}/comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.comments.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Create a comment for a porting order

`POST /porting_orders/{id}/comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comment = telnyx.porting_orders.comments.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(comment)
```

## Download a porting order loa template

`GET /porting_orders/{id}/loa_template`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.retrieve_loa_template("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List porting order requirements

`GET /porting_orders/{id}/requirements`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.retrieve_requirements("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Retrieve the associated V1 sub_request_id and port_request_id

`GET /porting_orders/{id}/sub_request`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.retrieve_sub_request("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List verification codes

`GET /porting_orders/{id}/verification_codes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.verification_codes.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Send the verification codes

`POST /porting_orders/{id}/verification_codes/send`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.porting_orders.verification_codes.send_("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Verify the verification code for a list of phone numbers

`POST /porting_orders/{id}/verification_codes/verify`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.verification_codes.verify("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## List action requirements for a porting order

`GET /porting_orders/{porting_order_id}/action_requirements`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.action_requirements.list("porting_order_id")

puts(page)
```

## Initiate an action requirement

`POST /porting_orders/{porting_order_id}/action_requirements/{id}/initiate`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.action_requirements.initiate(
  "id",
  porting_order_id: "porting_order_id",
  params: {first_name: "John", last_name: "Doe"}
)

puts(response)
```

## List all associated phone numbers

`GET /porting_orders/{porting_order_id}/associated_phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.associated_phone_numbers.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Create an associated phone number

`POST /porting_orders/{porting_order_id}/associated_phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

associated_phone_number = telnyx.porting_orders.associated_phone_numbers.create(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  action: :keep,
  phone_number_range: {}
)

puts(associated_phone_number)
```

## Delete an associated phone number

`DELETE /porting_orders/{porting_order_id}/associated_phone_numbers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

associated_phone_number = telnyx.porting_orders.associated_phone_numbers.delete(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(associated_phone_number)
```

## List all phone number blocks

`GET /porting_orders/{porting_order_id}/phone_number_blocks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.phone_number_blocks.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Create a phone number block

`POST /porting_orders/{porting_order_id}/phone_number_blocks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_block = telnyx.porting_orders.phone_number_blocks.create(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  activation_ranges: [{end_at: "+4930244999910", start_at: "+4930244999901"}],
  phone_number_range: {end_at: "+4930244999910", start_at: "+4930244999901"}
)

puts(phone_number_block)
```

## Delete a phone number block

`DELETE /porting_orders/{porting_order_id}/phone_number_blocks/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_block = telnyx.porting_orders.phone_number_blocks.delete(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(phone_number_block)
```

## List all phone number extensions

`GET /porting_orders/{porting_order_id}/phone_number_extensions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.phone_number_extensions.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(page)
```

## Create a phone number extension

`POST /porting_orders/{porting_order_id}/phone_number_extensions`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_extension = telnyx.porting_orders.phone_number_extensions.create(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  activation_ranges: [{end_at: 10, start_at: 1}],
  extension_range: {end_at: 10, start_at: 1},
  porting_phone_number_id: "f24151b6-3389-41d3-8747-7dd8c681e5e2"
)

puts(phone_number_extension)
```

## Delete a phone number extension

`DELETE /porting_orders/{porting_order_id}/phone_number_extensions/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_extension = telnyx.porting_orders.phone_number_extensions.delete(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  porting_order_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
)

puts(phone_number_extension)
```

## List all exception types

`GET /porting_orders/exception_types`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting_orders.retrieve_exception_types

puts(response)
```

## List all phone number configurations

`GET /porting_orders/phone_number_configurations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_orders.phone_number_configurations.list

puts(page)
```

## Create a list of phone number configurations

`POST /porting_orders/phone_number_configurations`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

phone_number_configuration = telnyx.porting_orders.phone_number_configurations.create

puts(phone_number_configuration)
```

## List all porting phone numbers

`GET /porting/phone_numbers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting_phone_numbers.list

puts(page)
```

## List porting related reports

`GET /porting/reports`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.porting.reports.list

puts(page)
```

## Create a porting related report

`POST /porting/reports`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

report = telnyx.porting.reports.create(params: {filters: {}}, report_type: :export_porting_orders_csv)

puts(report)
```

## Retrieve a report

`GET /porting/reports/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

report = telnyx.porting.reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(report)
```

## List available carriers in the UK

`GET /porting/uk_carriers`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.porting.list_uk_carriers

puts(response)
```

## Run a portability check

`POST /portability_checks`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.portability_checks.run

puts(response)
```
