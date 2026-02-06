---
name: telnyx-seti-ruby
description: >-
  Access SETI (Space Exploration Telecommunications Infrastructure) APIs. This
  skill provides Ruby SDK examples.
metadata:
  author: telnyx
  product: seti
  language: ruby
---

# Telnyx Seti - Ruby

## Installation

```bash
gem install telnyx
```

## Retrieve Black Box Test Results

`GET /seti/black_box_test_results`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.seti.retrieve_black_box_test_results

puts(response)
```
