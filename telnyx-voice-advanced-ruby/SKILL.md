---
name: telnyx-voice-advanced-ruby
description: >-
  Advanced call control features including DTMF sending, SIPREC recording, noise
  suppression, client state, and supervisor controls. This skill provides Ruby
  SDK examples.
metadata:
  author: telnyx
  product: voice-advanced
  language: ruby
---

# Telnyx Voice Advanced - Ruby

## Installation

```bash
gem install telnyx
```

## Update client state

`PUT /calls/{call_control_id}/actions/client_state_update`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.update_client_state("call_control_id", client_state: "aGF2ZSBhIG5pY2UgZGF5ID1d")

puts(response)
```

## Send DTMF

`POST /calls/{call_control_id}/actions/send_dtmf`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.send_dtmf("call_control_id", digits: "1www2WABCDw9")

puts(response)
```

## SIPREC start

`POST /calls/{call_control_id}/actions/siprec_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_siprec("call_control_id")

puts(response)
```

## SIPREC stop

`POST /calls/{call_control_id}/actions/siprec_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_siprec("call_control_id")

puts(response)
```

## Noise Suppression Start (BETA)

`POST /calls/{call_control_id}/actions/suppression_start`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.start_noise_suppression("call_control_id")

puts(response)
```

## Noise Suppression Stop (BETA)

`POST /calls/{call_control_id}/actions/suppression_stop`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.stop_noise_suppression("call_control_id")

puts(response)
```

## Switch supervisor role

`POST /calls/{call_control_id}/actions/switch_supervisor_role`

```ruby
require "telnyx"

telnyx = Telnyx::Client.new(api_key: "My API Key")

response = telnyx.calls.actions.switch_supervisor_role("call_control_id", role: :barge)

puts(response)
```
