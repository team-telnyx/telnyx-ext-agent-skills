---
name: telnyx-verify-python
description: >-
  Look up phone number information (carrier, type, caller name) and verify users
  via SMS/voice OTP. Use for phone verification and data enrichment. This skill
  provides Python SDK examples.
metadata:
  author: telnyx
  product: verify
  language: python
---

# Telnyx Verify - Python

## Installation

```bash
pip install telnyx
```

## Lookup phone number data

`GET /number_lookup/{phone_number}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
number_lookup = client.number_lookup.retrieve(
    phone_number="+18665552368",
)
print(number_lookup.data)
```

## Trigger Call verification

`POST /verifications/call`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
create_verification_response = client.verifications.trigger_call(
    phone_number="+13035551234",
    verify_profile_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(create_verification_response.data)
```

## Trigger Flash call verification

`POST /verifications/flashcall`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
create_verification_response = client.verifications.trigger_flashcall(
    phone_number="+13035551234",
    verify_profile_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(create_verification_response.data)
```

## Trigger SMS verification

`POST /verifications/sms`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
create_verification_response = client.verifications.trigger_sms(
    phone_number="+13035551234",
    verify_profile_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(create_verification_response.data)
```

## Retrieve verification

`GET /verifications/{verification_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verification = client.verifications.retrieve(
    "12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verification.data)
```

## Verify verification code by ID

`POST /verifications/{verification_id}/actions/verify`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_verification_code_response = client.verifications.actions.verify(
    verification_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verify_verification_code_response.data)
```

## List verifications by phone number

`GET /verifications/by_phone_number/{phone_number}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
by_phone_numbers = client.verifications.by_phone_number.list(
    "+13035551234",
)
print(by_phone_numbers.data)
```

## Verify verification code by phone number

`POST /verifications/by_phone_number/{phone_number}/actions/verify`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_verification_code_response = client.verifications.by_phone_number.actions.verify(
    phone_number="+13035551234",
    code="17686",
    verify_profile_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verify_verification_code_response.data)
```

## List all Verify profiles

`GET /verify_profiles`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
page = client.verify_profiles.list()
page = page.data[0]
print(page.id)
```

## Create a Verify profile

`POST /verify_profiles`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_profile_data = client.verify_profiles.create(
    name="Test Profile",
)
print(verify_profile_data.data)
```

## Retrieve Verify profile

`GET /verify_profiles/{verify_profile_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_profile_data = client.verify_profiles.retrieve(
    "12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verify_profile_data.data)
```

## Update Verify profile

`PATCH /verify_profiles/{verify_profile_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_profile_data = client.verify_profiles.update(
    verify_profile_id="12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verify_profile_data.data)
```

## Delete Verify profile

`DELETE /verify_profiles/{verify_profile_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
verify_profile_data = client.verify_profiles.delete(
    "12ade33a-21c0-473b-b055-b3c836e1c292",
)
print(verify_profile_data.data)
```

## Retrieve Verify profile message templates

`GET /verify_profiles/templates`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
response = client.verify_profiles.retrieve_templates()
print(response.data)
```

## Create message template

`POST /verify_profiles/templates`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
message_template = client.verify_profiles.create_template(
    text="Your {{app_name}} verification code is: {{code}}.",
)
print(message_template.data)
```

## Update message template

`PATCH /verify_profiles/templates/{template_id}`

```python
import os
from telnyx import Telnyx

client = Telnyx(
    api_key=os.environ.get("TELNYX_API_KEY"),  # This is the default and can be omitted
)
message_template = client.verify_profiles.update_template(
    template_id="12ade33a-21c0-473b-b055-b3c836e1c292",
    text="Your {{app_name}} verification code is: {{code}}.",
)
print(message_template.data)
```
