---
name: telnyx-porting-out-ruby
description: >-
  Manage port-out requests when numbers are being ported away from Telnyx. List,
  view, and update port-out status. This skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: porting-out
  language: ruby
---

# Telnyx Porting Out - Ruby

## Installation

```bash
gem install telnyx
```

## List portout requests

`GET /portouts`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.portouts.list

puts(page)
```

## Get a portout request

`GET /portouts/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

portout = telnyx.portouts.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(portout)
```

## List all comments for a portout request

`GET /portouts/{id}/comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comments = telnyx.portouts.comments.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(comments)
```

## Create a comment on a portout request

`POST /portouts/{id}/comments`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

comment = telnyx.portouts.comments.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(comment)
```

## List supporting documents on a portout request

`GET /portouts/{id}/supporting_documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

supporting_documents = telnyx.portouts.supporting_documents.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(supporting_documents)
```

## Create a list of supporting documents on a portout request

`POST /portouts/{id}/supporting_documents`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

supporting_document = telnyx.portouts.supporting_documents.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(supporting_document)
```

## Update Status

`PATCH /portouts/{id}/{status}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.portouts.update_status(
  :authorized,
  id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
  reason: "I do not recognize this transaction"
)

puts(response)
```

## List all port-out events

`GET /portouts/events`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.portouts.events.list

puts(page)
```

## Show a port-out event

`GET /portouts/events/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

event = telnyx.portouts.events.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(event)
```

## Republish a port-out event

`POST /portouts/events/{id}/republish`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

result = telnyx.portouts.events.republish("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(result)
```

## List eligible port-out rejection codes for a specific order

`GET /portouts/rejections/{portout_id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.portouts.list_rejection_codes("329d6658-8f93-405d-862f-648776e8afd7")

puts(response)
```

## List port-out related reports

`GET /portouts/reports`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

page = telnyx.portouts.reports.list

puts(page)
```

## Create a port-out related report

`POST /portouts/reports`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

report = telnyx.portouts.reports.create(params: {filters: {}}, report_type: :export_portouts_csv)

puts(report)
```

## Retrieve a report

`GET /portouts/reports/{id}`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

report = telnyx.portouts.reports.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

puts(report)
```
