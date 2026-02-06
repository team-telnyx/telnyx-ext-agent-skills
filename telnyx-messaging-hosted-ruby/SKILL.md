---
name: telnyx-messaging-hosted-ruby
description: >-
  Set up hosted SMS numbers, toll-free verification, and RCS messaging. Use when
  migrating numbers or enabling rich messaging features. This skill provides
  Ruby SDK examples.
metadata:
  author: telnyx
  product: messaging-hosted
  language: ruby
---

# Telnyx Messaging Hosted - Ruby

## Installation

```bash
gem install telnyx
```

## List messaging hosted number orders

`GET /messaging_hosted_number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_hosted_number_orders.list

puts(page)
```

## Create a messaging hosted number order

`POST /messaging_hosted_number_orders`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

messaging_hosted_number_order = telnyx.messaging_hosted_number_orders.create

puts(messaging_hosted_number_order)
```

## Retrieve a messaging hosted number order

`GET /messaging_hosted_number_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

messaging_hosted_number_order = telnyx.messaging_hosted_number_orders.retrieve("id")

puts(messaging_hosted_number_order)
```

## Delete a messaging hosted number order

`DELETE /messaging_hosted_number_orders/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

messaging_hosted_number_order = telnyx.messaging_hosted_number_orders.delete("id")

puts(messaging_hosted_number_order)
```

## Upload hosted number document

`POST /messaging_hosted_number_orders/{id}/actions/file_upload`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_hosted_number_orders.actions.upload_file("id")

puts(response)
```

## Validate hosted number codes

`POST /messaging_hosted_number_orders/{id}/validation_codes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_hosted_number_orders.validate_codes(
  "id",
  verification_codes: [{code: "code", phone_number: "phone_number"}]
)

puts(response)
```

## Create hosted number verification codes

`POST /messaging_hosted_number_orders/{id}/verification_codes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_hosted_number_orders.create_verification_codes(
  "id",
  phone_numbers: ["string"],
  verification_method: :sms
)

puts(response)
```

## Check hosted messaging eligibility

`POST /messaging_hosted_number_orders/eligibility_numbers_check`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging_hosted_number_orders.check_eligibility(phone_numbers: ["string"])

puts(response)
```

## Delete a messaging hosted number

`DELETE /messaging_hosted_numbers/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

messaging_hosted_number = telnyx.messaging_hosted_numbers.delete("id")

puts(messaging_hosted_number)
```

## Send an RCS message

`POST /messages/rcs`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messages.rcs.send_(
  agent_id: "Agent007",
  agent_message: {},
  messaging_profile_id: "messaging_profile_id",
  to: "+13125551234"
)

puts(response)
```

## List all RCS agents

`GET /messaging/rcs/agents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging.rcs.agents.list

puts(page)
```

## Retrieve an RCS agent

`GET /messaging/rcs/agents/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

rcs_agent_response = telnyx.messaging.rcs.agents.retrieve("id")

puts(rcs_agent_response)
```

## Modify an RCS agent

`PATCH /messaging/rcs/agents/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

rcs_agent_response = telnyx.messaging.rcs.agents.update("id")

puts(rcs_agent_response)
```

## Check RCS capabilities (batch)

`POST /messaging/rcs/bulk_capabilities`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging.rcs.list_bulk_capabilities(agent_id: "TestAgent", phone_numbers: ["+13125551234"])

puts(response)
```

## Check RCS capabilities

`GET /messaging/rcs/capabilities/{agent_id}/{phone_number}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging.rcs.retrieve_capabilities("phone_number", agent_id: "agent_id")

puts(response)
```

## Add RCS test number

`PUT /messaging/rcs/test_number_invite/{id}/{phone_number}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messaging.rcs.invite_test_number("phone_number", id: "id")

puts(response)
```

## Generate RCS deeplink

`GET /messages/rcs_deeplinks/{agent_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.messages.rcs.generate_deeplink("agent_id")

puts(response)
```

## List Verification Requests

`GET /messaging_tollfree/verification/requests`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.messaging_tollfree.verification.requests.list(page: 1, page_size: 1)

puts(page)
```

## Submit Verification Request

`POST /messaging_tollfree/verification/requests`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verification_request_egress = telnyx.messaging_tollfree.verification.requests.create(
  additional_information: "additionalInformation",
  business_addr1: "600 Congress Avenue",
  business_city: "Austin",
  business_contact_email: "email@example.com",
  business_contact_first_name: "John",
  business_contact_last_name: "Doe",
  business_contact_phone: "+18005550100",
  business_name: "Telnyx LLC",
  business_state: "Texas",
  business_zip: "78701",
  corporate_website: "http://example.com",
  isv_reseller: "isvReseller",
  message_volume: :"100,000",
  opt_in_workflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
  opt_in_workflow_image_urls: [{url: "https://telnyx.com/sign-up"}, {url: "https://telnyx.com/company/data-privacy"}],
  phone_numbers: [{phoneNumber: "+18773554398"}, {phoneNumber: "+18773554399"}],
  production_message_content: "Your Telnyx OTP is XXXX",
  use_case: :"2FA",
  use_case_summary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal"
)

puts(verification_request_egress)
```

## Get Verification Request

`GET /messaging_tollfree/verification/requests/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verification_request_status = telnyx.messaging_tollfree.verification.requests.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(verification_request_status)
```

## Update Verification Request

`PATCH /messaging_tollfree/verification/requests/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

verification_request_egress = telnyx.messaging_tollfree.verification.requests.update(
  "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  additional_information: "additionalInformation",
  business_addr1: "600 Congress Avenue",
  business_city: "Austin",
  business_contact_email: "email@example.com",
  business_contact_first_name: "John",
  business_contact_last_name: "Doe",
  business_contact_phone: "+18005550100",
  business_name: "Telnyx LLC",
  business_state: "Texas",
  business_zip: "78701",
  corporate_website: "http://example.com",
  isv_reseller: "isvReseller",
  message_volume: :"100,000",
  opt_in_workflow: "User signs into the Telnyx portal, enters a number and is prompted to select whether they want to use 2FA verification for security purposes. If they've opted in a confirmation message is sent out to the handset",
  opt_in_workflow_image_urls: [{url: "https://telnyx.com/sign-up"}, {url: "https://telnyx.com/company/data-privacy"}],
  phone_numbers: [{phoneNumber: "+18773554398"}, {phoneNumber: "+18773554399"}],
  production_message_content: "Your Telnyx OTP is XXXX",
  use_case: :"2FA",
  use_case_summary: "This is a use case where Telnyx sends out 2FA codes to portal users to verify their identity in order to sign into the portal"
)

puts(verification_request_egress)
```

## Delete Verification Request

`DELETE /messaging_tollfree/verification/requests/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.messaging_tollfree.verification.requests.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```
