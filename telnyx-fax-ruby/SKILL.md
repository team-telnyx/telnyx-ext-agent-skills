---
name: telnyx-fax-ruby
description: >-
  Send and receive faxes programmatically. Manage fax applications and media.
  This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: fax
  language: ruby
---

# Telnyx Fax - Ruby

## Installation

```bash
gem install telnyx
```

## List all Fax Applications

`GET /fax_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.fax_applications.list

puts(page)
```

## Creates a Fax Application

`POST /fax_applications`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax_application = telnyx.fax_applications.create(application_name: "fax-router", webhook_event_url: "https://example.com")

puts(fax_application)
```

## Retrieve a Fax Application

`GET /fax_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax_application = telnyx.fax_applications.retrieve("1293384261075731499")

puts(fax_application)
```

## Update a Fax Application

`PATCH /fax_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax_application = telnyx.fax_applications.update(
  "1293384261075731499",
  application_name: "fax-router",
  webhook_event_url: "https://example.com"
)

puts(fax_application)
```

## Deletes a Fax Application

`DELETE /fax_applications/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax_application = telnyx.fax_applications.delete("1293384261075731499")

puts(fax_application)
```

## View a list of faxes

`GET /faxes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.faxes.list

puts(page)
```

## Send a fax

`POST /faxes`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax = telnyx.faxes.create(connection_id: "234423", from: "+13125790015", to: "+13127367276")

puts(fax)
```

## View a fax

`GET /faxes/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

fax = telnyx.faxes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(fax)
```

## Delete a fax

`DELETE /faxes/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.faxes.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## Cancel a fax

`POST /faxes/{id}/actions/cancel`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.faxes.actions.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```

## Refresh a fax

`POST /faxes/{id}/actions/refresh`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.faxes.actions.refresh("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(response)
```
